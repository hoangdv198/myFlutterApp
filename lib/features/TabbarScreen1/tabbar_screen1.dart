import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_flutter_app/assets/images/svg/icon_send.dart';
import 'package:my_flutter_app/assets/images/svg/logo_ig.dart';
import 'package:my_flutter_app/features/TabbarScreen1/post_providers.dart';

import '../../assets/images/svg/icon_camera.dart';
import '../../core/post.dart';

class TabScreen1 extends ConsumerStatefulWidget {
  const TabScreen1({super.key});

  @override
  ConsumerState<TabScreen1> createState() => _TabScreen1State();
}

class _TabScreen1State extends ConsumerState<TabScreen1> {
  @override
  Widget build(BuildContext context) {
    // watch the FutureProvider and get an AsyncValue<Post>
    final postAsync = ref.watch(postFutureProvider);

    return SafeArea(
      child: Column(
        children: [
          const _header(),
          postAsync.when(
            data: (List<Post> postData) => Expanded(
              child: ListView.builder(
                itemCount: postData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Text(postData[index].title),
                        ],
                      ),
                      const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )
                    ],
                  );
                },
                shrinkWrap: true,
              ),
            ),
            loading: () => const CircularProgressIndicator(),
            error: (error, stackTrace) => Text('Error: $error'),
          )
        ],
      ),
    );
  }
}

class _header extends StatelessWidget {
  const _header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconCamera,
              SizedBox(
                child: logoIg,
                height: 28,
              ),
              iconSend
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
