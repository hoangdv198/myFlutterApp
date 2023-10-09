import 'package:flutter/material.dart';
import 'package:my_flutter_app/main.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _controller;
  // stream link: 'rtmp://live.restream.io/live/re_7214043_bd59231ee4ca9208ebab'
  // rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mp4
  // http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4
  // rtsp://zephyr.rtsp.stream/movie?streamKey=2bfa0ad6e2265107ac64ef3d8ff9a01f
  // rtsp://zephyr.rtsp.stream/pattern?streamKey=c6487a692ff7d9013c5830cd30139df8
  // http://13.212.200.148:8080/live/f30e5173-4136-4b9d-8478-a09714551999.flv?token=bc7ad819-e77b-48f0-8baa-70379c8f0e52
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'http://13.212.200.148:8080/live/f30e5173-4136-4b9d-8478-a09714551999.flv?token=bc7ad819-e77b-48f0-8baa-70379c8f0e52'
        ))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      }).onError((error, stackTrace) {
        logger.e(error.toString());
      });
    _controller.addListener(() {
      logger.i(_controller.value);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(children: [
            if (_controller.value.isInitialized)
              Stack(
                children: [
                  Center(
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        Colors.grey,
                        BlendMode.saturation,
                      ),
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _controller.seekTo(_controller.value.position -
                                Duration(seconds: 10));
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.orange),
                            child: Text('-5s'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _controller.seekTo(_controller.value.position +
                                Duration(seconds: 10));
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.orange),
                            child: Text('+5s'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            if (!_controller.value.isInitialized)
              const Center(child: CircularProgressIndicator()),
          ])),
    );
  }
}
