import 'package:flutter/material.dart';
class SignIn extends StatelessWidget {
  const SignIn({super.key});
  static String id = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Hero(tag:'profile pic',child: Container(
            height: 800,
            child: Image.asset('assets/profile_pic.jpg')),
        ),
        TextField(
          onChanged: (value){

          },
        ),
        TextField(
          onChanged: (value){

          },
        ),
      ],
    );
  }
}
