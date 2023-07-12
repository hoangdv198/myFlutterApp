import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/assets/images/svg/logo_ig.dart';
import 'package:my_flutter_app/router/router.gr.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget svg =
        SvgPicture.string(logoIgSvgString);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svg,
            const SizedBox(height: 30.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 10.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                context.pushRoute(const HomeRoute());
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              child: const Text('Log In'),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Forgot password?',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Don't have an account?"),
                SizedBox(width: 5.0),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
