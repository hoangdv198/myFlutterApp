import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(240, 244, 239, 243),
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
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
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
                SocialButtonRow()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(
          icon: Icons.g_translate,
          color: Colors.red,
          onPressed: () {
            // Handle Google button pressed
          },
        ),
        const SizedBox(width: 16.0),
        SocialButton(
          icon: Icons.facebook,
          color: Colors.blue,
          onPressed: () {
            // Handle Facebook button pressed
          },
        ),
        const SizedBox(width: 16.0),
        SocialButton(
          icon: Icons.face,
          color: Colors.black,
          onPressed: () {
            // Handle Apple button pressed
          },
        ),
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const SocialButton({
    Key? key,
    required this.icon,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      shape: CircleBorder(),
      padding: EdgeInsets.all(16.0),
      child: Icon(
        icon,
        size: 24.0,
        color: Colors.white,
      ),
    );
  }
}
