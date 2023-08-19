import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_flutter_app/provider/auth_providers.dart';
import 'package:my_flutter_app/router/router.gr.dart';

class TabScreen5 extends ConsumerStatefulWidget {
  const TabScreen5({super.key});

  @override
  _TabScreen5State createState() => _TabScreen5State();
}

class _TabScreen5State extends ConsumerState<TabScreen5> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    User? user = ref.watch(authRepositoryProvider);
    print('user $user');
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Text("Helo user: ${user?.email}"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () async {
                try {
                  await ref.read(authRepositoryProvider.notifier).logout();
                  context.replaceRoute(LoginRoute());
                } catch (e) {
                  rethrow;
                }
              },
              child: const Text('Log out'),
            ),
          ],
        ),
      ),
    );
  }
}