import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_flutter_app/assets/images/svg/logo_ig.dart';
import 'package:my_flutter_app/provider/auth_providers.dart';

import '../../router/router.gr.dart';
import '../../widgets/LoadingOverlay.dart';

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  bool isLoading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.string(logoIgSvgString);
    return LoadingOverlay(
      isLoading: isLoading,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              svg,
              const SizedBox(height: 30.0),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _onPressedLogin,
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
      ),
    );
  }

  _onPressedLogin() async {
    try {
      final emailValue = emailController.value.text;
      final passwordValue = passwordController.value.text;
      // validator
      if (emailValue.isEmpty) {
        throw 'Require email';
      }
      if (passwordValue.isEmpty) {
        throw 'Require password';
      }
      setState(() {
        isLoading = true;
      });
      User? user =
          await ref.read(authRepositoryProvider.notifier).loginWithEmailPassword(emailValue,passwordValue);
      if (user != null) {
        context.replaceRoute(const HomeRoute());
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }
}
