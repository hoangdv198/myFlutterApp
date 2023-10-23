import 'dart:async';

import 'package:colorfilter_generator/addons.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video_controls/src/controls/methods/video_state.dart';
import 'package:my_flutter_app/core/api/models/stream/stream.dart';
import 'package:my_flutter_app/main.dart';
import 'package:media_kit_video/media_kit_video.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key, required this.stream});
  final StreamModel stream;
  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  // stream link: 'rtmp://live.restream.io/live/re_7214043_bd59231ee4ca9208ebab'
  // rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mp4
  // http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4
  // rtsp://zephyr.rtsp.stream/movie?streamKey=2bfa0ad6e2265107ac64ef3d8ff9a01f
  // rtsp://zephyr.rtsp.stream/pattern?streamKey=c6487a692ff7d9013c5830cd30139df8
  // http://13.212.200.148:8080/live/f30e5173-4136-4b9d-8478-a09714551999.flv?token=bc7ad819-e77b-48f0-8baa-70379c8f0e52
  // Create a [Player] to control playback.
  bool isVideoInitial = false;
  late final player = Player(configuration: PlayerConfiguration(
    ready: () {
      logger.i('The initialization is complete.');
      setState(() {
        isVideoInitial = true;
      });
    },
  ));
  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(player);
  bool isWB = false;
  bool isFlash = false;
  bool vibShort = false;
  bool vibLong = false;
  double _currentSliderValue = 0;
  late Timer? flashCallback;
  late Timer? vibShortCallback;
  late Timer? vibLongCallback;

  @override
  void initState() {
    super.initState();
    player.open(Media(widget.stream.flvUrl)).then((value) {
      logger.i('DONE');
    }).onError((error, stackTrace) {
      logger.e(error);
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: MaterialVideoControlsTheme(
        normal: MaterialVideoControlsThemeData(
            // Modify theme options:
            buttonBarButtonSize: 24.0,
            buttonBarButtonColor: Colors.white,
            // Modify top button bar:
            topButtonBar: [
              const Spacer(),
            ],
            bottomButtonBar: [
              MaterialPositionIndicator(),
              Spacer(),
              // MaterialCustomButton(
              //   onPressed: () {
              //     if (isFullscreen(context)) {
              //     } else {}
              //   },
              // )
            ]),
        fullscreen: const MaterialVideoControlsThemeData(
          // Modify theme options:
          displaySeekBar: false,
          automaticallyImplySkipNextButton: false,
          automaticallyImplySkipPreviousButton: false,
        ),
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Stack(children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: ColorFiltered(
                        colorFilter: ColorFilter.matrix(
                            ColorFilterAddons.contrast(_currentSliderValue)),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            isWB ? Colors.grey : Colors.transparent,
                            BlendMode.saturation,
                          ),
                          child: Video(
                              controller: controller,
                              fill: Colors.black,
                              // onExitFullscreen: () {},
                              onEnterFullscreen: () async {
                                logger.i('onEnterFullscreen');
                              }),
                        ),
                      ),
                    ),
                  ),
                  if (isVideoInitial)
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ButtonFeature(
                                child: Icon(
                                  Icons.flash_on_outlined,
                                  color: isFlash ? Colors.white : Colors.black,
                                ),
                                onTap: () {
                                  onFlash();
                                },
                              ),
                              const SizedBox(width: 10),
                              ButtonFeature(
                                child: Icon(
                                  Icons.edgesensor_low_outlined,
                                  color: vibShort ? Colors.white : Colors.black,
                                ),
                                onTap: () {
                                  onLowVibration();
                                },
                              ),
                              const SizedBox(width: 10),
                              ButtonFeature(
                                child: Icon(
                                  Icons.edgesensor_high_outlined,
                                  color: vibLong ? Colors.white : Colors.black,
                                ),
                                onTap: () {
                                  onHighVibration();
                                },
                              ),
                              const SizedBox(width: 10),
                              ButtonFeature(
                                child: Icon(
                                  Icons.filter_b_and_w,
                                  color: isWB ? Colors.white : Colors.black,
                                ),
                                onTap: () {
                                  onWB();
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.contrast,
                                color: Colors.white,
                              ),
                              Slider(
                                value: _currentSliderValue,
                                max: 1,
                                label: _currentSliderValue.round().toString(),
                                onChanged: (double value) {
                                  setState(() {
                                    _currentSliderValue = value;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ])),
      ),
    );
  }

  //
  Future<void> onFlash() async {
    try {
      await firestoreServices.updateOptions(
          streamId: widget.stream.createdBy.id,
          isFlash: true,
          vibrateLong: vibLong,
          vibrateShort: vibShort);
      setState(() {
        isFlash = true;
      });
      // set off
      if (flashCallback?.isActive ?? false) {
        flashCallback?.cancel();
      }
      flashCallback = Timer(Duration(seconds: 1), () {
        firestoreServices.updateOptions(
            streamId: widget.stream.createdBy.id,
            isFlash: false,
            vibrateLong: vibLong,
            vibrateShort: vibShort);
        setState(() {
          isFlash = false;
        });
      });
    } catch (e) {
      logger.i(e);
    }
  }

  Future<void> onLowVibration() async {
    try {
      await firestoreServices.updateOptions(
          streamId: widget.stream.createdBy.id,
          vibrateShort: true,
          isFlash: isFlash,
          vibrateLong: vibLong);
      setState(() {
        vibShort = true;
      });
      // set off
      if (flashCallback?.isActive ?? false) {
        vibShortCallback?.cancel();
      }
      vibShortCallback = Timer(Duration(seconds: 1), () async {
        await firestoreServices.updateOptions(
            streamId: widget.stream.createdBy.id,
            vibrateShort: false,
            isFlash: isFlash,
            vibrateLong: vibLong);
        setState(() {
          vibShort = false;
        });
      });
    } catch (e) {
      logger.i(e);
    }
  }

  Future<void> onHighVibration() async {
    try {
      await firestoreServices.updateOptions(
          streamId: widget.stream.createdBy.id,
          vibrateLong: true,
          vibrateShort: vibShort,
          isFlash: isFlash);
      setState(() {
        vibLong = true;
      });
      if (flashCallback?.isActive ?? false) {
        vibLongCallback?.cancel();
      }
      vibLongCallback = Timer(Duration(seconds: 1), () async {
        await firestoreServices.updateOptions(
            streamId: widget.stream.createdBy.id,
            vibrateLong: false,
            vibrateShort: vibShort,
            isFlash: isFlash);
        setState(() {
          vibLong = false;
        });
      });
    } catch (e) {
      logger.i(e);
    }
  }

  Future<void> onWB() async {
    try {
      setState(() {
        isWB = !isWB;
      });
    } catch (e) {
      logger.i(e);
    }
  }
}

class ButtonFeature extends StatelessWidget {
  const ButtonFeature({super.key, required this.child, this.onTap});

  final void Function()? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.orange),
          child: child),
    );
  }
}
