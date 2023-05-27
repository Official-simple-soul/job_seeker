import 'package:flutter/material.dart';
import 'components/or_login_with.dart';
import 'home.dart';
import 'signup.dart';
import 'components/welcome_info.dart';
import 'components/inputs.dart';
import 'components/custom_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  final bool _togglePasswordShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 239, 241),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeInfo(
                  main: 'Welcome Back!',
                  mini: 'Fill your details or continue\nwith social media'),
              InputsBox(
                icon: Icons.email_outlined,
                placeholder: 'Email Address',
              ),
              InputsBox(
                icon: Icons.lock_outline,
                icon2: Icons.remove_red_eye_outlined,
                icon3: Icons.visibility_off_outlined,
                placeholder: 'Password',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: CustomButton(
                    buttonText: 'Sign In',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MyHomePage(title: 'title')));
                    }),
              ),
              OrLoginWith(
                optionText: 'New user? Create account',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  // void setState(Null Function() param0) {}
}
