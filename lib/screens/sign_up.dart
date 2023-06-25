import 'package:flutter/material.dart';
import 'package:neatness_project/components/rounded_button.dart';
import 'package:neatness_project/screens/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  static String id = '/sign_up';
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String email;
  late String password;
  late String confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  confirmPassword = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              RoundedButton(
                text: 'SignUp',
                onPressedFunction: () async {
                },
              )
            ],
          )),
    );
  }
}
