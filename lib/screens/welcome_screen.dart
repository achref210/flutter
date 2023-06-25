import 'package:flutter/material.dart';
import 'package:neatness_project/screens/profile_screen.dart';
import 'package:neatness_project/screens/sign_in.dart';
import 'package:neatness_project/screens/sign_up.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static String id = '/welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Neatness'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Hero(tag:'profile pic',child: Container(
                height: animation.value*100,
                child: Center(child: Image.asset('assets/profile_pic.jpg'))),
            ),

            ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, SignIn.id),
                icon: Icon(Icons.message_outlined),
                label: Text('SignIn')),
            ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, SignUp.id),
                icon: Icon(Icons.message_outlined),
                label: Text('SignUp')),
          ],
        )
    );
  }
}
