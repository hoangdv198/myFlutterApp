import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_flutter_app/provider/auth_providers.dart';

import '../../assets/images/svg/logo_ig.dart';
import '../../router/router.gr.dart';
import '../../widgets/LoadingOverlay.dart';

@RoutePage()
class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  bool isLoading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  _onPressedSignUp() async {
    try {
      final emailValue = emailController.value.text;
      final passwordValue = passwordController.value.text;
      final confirmPasswordValue = confirmPasswordController.value.text;
      // validator
      if (emailValue.isEmpty) {
        throw 'Require email';
      }
      if (passwordValue.isEmpty) {
        throw 'Require password';
      }
      if (passwordValue != confirmPasswordValue) {
        throw 'Password and confirm password not the same';
      }
      setState(() {
        isLoading = true;
      });
      User? user = await ref
          .read(authRepositoryProvider.notifier)
          .signUpEmailPassword(emailValue, passwordValue);
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

  @override
  Widget build(BuildContext context) {
    final Widget igLogo = SvgPicture.string(logoIgSvgString);
    return LoadingOverlay(
      isLoading: isLoading,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              igLogo,
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
              const SizedBox(height: 10.0),
              TextField(
                obscureText: true,
                controller: confirmPasswordController,
                decoration: const InputDecoration(
                  labelText: 'Confirm password',
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _onPressedSignUp,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
