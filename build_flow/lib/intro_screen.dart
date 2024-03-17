import 'package:flutter/material.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Color myColor = Color(0xFF2B2B2B);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: myColor,
        body: SafeArea(
          child: Column(
            children: [Image.asset("assets/IntroScreenImage.png")],
          ),
        ),
      ),
    );
  }
}
