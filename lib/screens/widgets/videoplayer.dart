import 'package:flutter/material.dart';
import 'package:ext_video_player/ext_video_player.dart';
import 'package:my_flutter_app/main.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _controller;
  // stream link: 'rtmp://live.restream.io/live/re_7214043_bd59231ee4ca9208ebab'
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'rtmp://live.restream.io/live/re_7214043_bd59231ee4ca9208ebab')
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
            if (_controller.value.initialized)
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
                            _controller.seekTo(_controller.value.position - Duration(seconds: 10));
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
                            _controller.seekTo(_controller.value.position + Duration(seconds: 10));
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
            if (!_controller.value.initialized)
              const Center(child: CircularProgressIndicator()),
          ])),
    );
  }
}
