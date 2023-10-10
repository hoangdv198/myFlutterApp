import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/component/load/loadingOverlay.dart';
import 'package:my_flutter_app/core/api/models/stream/stream.dart';
import 'package:my_flutter_app/main.dart';
import 'package:my_flutter_app/routes/app_route.gr.dart';
import 'package:my_flutter_app/screens/widgets/videoplayer.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StreamModel> listStreams = [];
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    logger.i(user);
    getListStreams();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lives'),
        leading: SizedBox(),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.white10,
      body: LoadingOverlay(
          isLoading: isLoading,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: listStreams.length,
              itemBuilder: (BuildContext context, int index) {
                final item = listStreams[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    title: Text(item.name),
                    tileColor: Colors.white,
                    onTap: () {
                      context.router.navigate(VideoDetailRoute(stream: item));
                    },
                  ),
                );
              })),
    );
  }

  // funtion
  Future<void> getListStreams() async {
    try {
      setState(() {
        isLoading = true;
      });
      final response = await client.getStreamsViewable(1, 30);
      setState(() {
        listStreams = response.data;
        isLoading = false;
      });
      logger.i(response);
    } catch (e) {
      logger.e(e);
      setState(() {
        isLoading = false;
      });
    }
  }
}

// No state included