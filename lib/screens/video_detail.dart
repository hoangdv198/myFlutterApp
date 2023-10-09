import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/widgets/videoplayer.dart';

@RoutePage()
class VideoDetailScreen extends StatefulWidget {
  
  const VideoDetailScreen({super.key});

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Watch Live'),backgroundColor: Colors.orange,),
      body: MyVideoPlayer(),
    );
  }
}