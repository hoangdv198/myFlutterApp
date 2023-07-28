import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/assets/images/svg/logo_ig.dart';
import 'package:my_flutter_app/router/router.gr.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    print("----------ChromeSafari browser opened");
  }

  @override
  void onCompletedInitialLoad() {
    print("----------ChromeSafari browser initial load completed");
  }

  @override
  void onClosed() {
    print("----------ChromeSafari browser closed");
  }

  @override
  void onLoadStop() {
    
  }
}

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final ChromeSafariBrowser browser = new MyChromeSafariBrowser();

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
              onPressed: () async {
                context.pushRoute(const RegisterRoute());
              // await browser.open(
              //     url: Uri.parse("https://id.alt.ai/login/?product_code=gijiroku"),
              //     options: ChromeSafariBrowserClassOptions(
              //         android: AndroidChromeCustomTabsOptions(
              //             shareState: CustomTabsShareState.SHARE_STATE_OFF,
                          
              //             ),
              //         ios: IOSSafariOptions(barCollapsingEnabled: true)));
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
