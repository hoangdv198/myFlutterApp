import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
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
  late final player = Player(
    configuration: PlayerConfiguration(
      ready: () {
        logger.i('The initialization is complete.');
        setState(() {
          isVideoInitial = true;
        });
      },
    )
  );
  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(player);

  @override
  void initState() {
    super.initState();
    player
        .open(Media(
            'http://13.212.200.148:8080/live/f30e5173-4136-4b9d-8478-a09714551999.flv?token=bc7ad819-e77b-48f0-8baa-70379c8f0e52'))
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
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(children: [
            Stack(
              children: [
                Center(
                  child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Colors.transparent,
                        BlendMode.saturation,
                      ),
                      child: Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height:
                              MediaQuery.of(context).size.width * 9.0 / 16.0,
                          // Use [Video] widget to display video output.
                          child: Video(controller: controller),
                        ),
                      )),
                ),
                if (isVideoInitial) Positioned(
                  bottom: 10,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          await player.seek(Duration(
                              seconds: player.state.position.inSeconds - 5));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.orange),
                          child: Text('-5s'),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          await player.seek(Duration(
                              seconds: player.state.position.inSeconds + 5
                              ));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.orange),
                          child: Text('+5s'),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          await player.playOrPause();
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.orange),
                          child: Text('Play'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
