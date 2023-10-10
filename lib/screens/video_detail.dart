import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/core/api/models/stream/stream.dart';
import 'package:my_flutter_app/screens/widgets/videoplayer.dart';

@RoutePage()
class VideoDetailScreen extends StatelessWidget {
  final StreamModel stream;
  const VideoDetailScreen({super.key,required this.stream});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(stream.name),backgroundColor: Colors.orange,),
      body: MyVideoPlayer(stream: stream,),
    );
  }
}