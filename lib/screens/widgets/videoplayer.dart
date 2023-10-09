import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video_controls/src/controls/methods/video_state.dart';
import 'package:my_flutter_app/main.dart';
import 'package:media_kit_video/media_kit_video.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

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

  @override
  void initState() {
    super.initState();
    player
        .open(Media(
            'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'))
        .then((value) {
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
              MaterialCustomButton(
                onPressed: () {
                  if (isFullscreen(context)) {
                  } else {}
                },
              )
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
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 9.0 / 16.0,
                      // Use [Video] widget to display video output.
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
                  // Container(
                  //   color: Colors.transparent,
                  // ),
                  if (isVideoInitial)
                    Positioned(
                      bottom: 10,
                      left: 20,
                      child: Row(
                        children: [
                          ButtonFeature(
                            child: const Icon(
                              Icons.flash_on_outlined,
                              color: Colors.white,
                            ),
                            onTap: () {
                              onFlash();
                            },
                          ),
                          const SizedBox(width: 10),
                          ButtonFeature(
                            child: const Icon(
                              Icons.edgesensor_low_outlined,
                              color: Colors.white,
                            ),
                            onTap: () {
                              onLowVibration();
                            },
                          ),
                          const SizedBox(width: 10),
                          ButtonFeature(
                            child: const Icon(
                              Icons.edgesensor_high_outlined,
                              color: Colors.white,
                            ),
                            onTap: () {
                              onHighVibration();
                            },
                          ),
                          const SizedBox(width: 10),
                          ButtonFeature(
                            child: const Icon(
                              Icons.filter_b_and_w,
                              color: Colors.white,
                            ),
                            onTap: () {
                              onWB();
                            },
                          ),
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
   
    } catch (e) {
      logger.i(e);
    }
  }

  Future<void> onLowVibration() async {
    try {} catch (e) {
      logger.i(e);
    }
  }

  Future<void> onHighVibration() async {
    try {

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
