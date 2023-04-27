import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'route_names.dart';

class FirstScreen extends StatefulWidget {
  static const String id = 'first_screen';
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.black,
      body: myFirstScreen(),
    );
  }

  Widget myFirstScreen() {
    return Center(
      child: SizedBox(
        width: 250.0,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 48.0,
            fontFamily: 'Agne',
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 238, 10, 10),
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'NETFLIX',
              ),
            ],
            onTap: () {
              Navigator.pushNamed(
                context,
                RouteNames.secondScreen,
              );
            },
          ),
        ),
      ),
    );
  }
}
