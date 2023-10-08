import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/widgets/videoplayer.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: MyVideoPlayer(),
    );
  }
}

// No state included