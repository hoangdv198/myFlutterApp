import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/component/load/loadingOverlay.dart';
import 'package:my_flutter_app/core/api/models/auth/auth_body.dart';
import 'package:my_flutter_app/main.dart';
import 'package:my_flutter_app/routes/app_route.gr.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController =
      TextEditingController(text: 'admin@example.com');
  final TextEditingController _passwordController =
      TextEditingController(text: 'secret');
  bool _isPasswordVisible = false;
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;
    // Add your own logic for validating the email and password
    // and handling the login action here.
    // For simplicity, let's just print the values for now:

    print('Email: $email');
    print('Password: $password');
    if (email.isEmpty || password.isEmpty) {
      // Display an error message if email or password is empty
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Please enter both email and password.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      // Perform the login logic if email and password are not empty
      // ...
      // Add your own logic for validating the email and password
      // and handling the login action here.
      // For simplicity, let's just print the values for now:
      print('Email: $email');
      print('Password: $password');
      setState(() {
        isLoading = true;
      });
      client.login(AuthBody(email: email, password: password)).then((res) {
        logger.i(res);
        dio.options.headers['Authorization'] = 'Bearer ${res.token}';
        user = res.user;
        setState(() {
          isLoading = false;
        });
        context.pushRoute(const HomeRoute());
      }).catchError((obj) {
        // non-200 error goes here.
        logger.e(obj);
        setState(() {
          isLoading = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: LoadingOverlay(
        isLoading: isLoading,
        child: Scaffold(
          backgroundColor: Color.fromARGB(240, 239, 239, 239),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Hello again!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Welcome back you've been missed!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 40),
                  CupertinoTextField(
                    controller: _emailController,
                    placeholder: "Enter email",
                    padding: const EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                  ),
                  const SizedBox(height: 16.0),
                  CupertinoTextField(
                    controller: _passwordController,
                    placeholder: "Password",
                    padding: const EdgeInsets.all(14.0),
                    obscureText: !_isPasswordVisible,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    suffix: GestureDetector(
                      onTap: _togglePasswordVisibility,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Icon(
                          !_isPasswordVisible
                              ? CupertinoIcons.eye_slash
                              : CupertinoIcons.eye,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: _login,
                      style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll(
                              Colors.deepOrangeAccent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          )),
                      child: const Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  const Divider(
                    thickness: 1,
                    indent: 40,
                    endIndent: 40,
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
