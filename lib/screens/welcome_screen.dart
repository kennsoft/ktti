import 'package:flutter/material.dart';
import 'package:ktti/screens/login.dart';
import 'package:ktti/screens/register.dart';
import 'package:ktti/widgets/custom_scaffold.dart';
import 'package:ktti/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(
      children: [
        Flexible(
          flex: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40.0,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                        text: 'Welcome Back!\n',
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        )),
                    TextSpan(
                        text: '\nEnter Account Details\n',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
        const Flexible(
          flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,

            child: Row(
              children: [
                Expanded(child: WelcomeButton(
                  buttonText: 'Sign In',
                  onTap: LoginScreen(),
                  color: Colors.transparent,
                  textColor: Colors.white,
                ),
                ),
                Expanded(child: WelcomeButton(
                  buttonText: 'Sign Up',
                  onTap: RegisterScreen(),
                  color: Colors.white,
                  textColor: Colors.blue,
                ),
                ),
              ],
            )
            ),
        ),
      ],
    ));
  }
}
