import 'package:flutter/material.dart';
import 'components/custom_button.dart';
import 'components/inputs.dart';
import 'components/or_login_with.dart';
import 'components/welcome_info.dart';
import 'home.dart';
import 'welcome.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 239, 241),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Welcome()));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WelcomeInfo(
                    main: 'Create Account',
                    mini: 'Fill your details or continue\nwith social media'),
                InputsBox(
                  icon: Icons.account_box_outlined,
                  placeholder: 'User Name',
                ),
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
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: CustomButton(
                      buttonText: 'Sign Up',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MyHomePage(title: 'title')));
                      }),
                ),
                OrLoginWith(
                    optionText: 'Already have an account? Sign In',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Welcome()));
                    })
              ],
            ),
          ),
        ]),
      ),
    );
    ;
  }
}
