import 'package:build_flow/login_page.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  Color BgColor = const Color(0xFF2B2B2B);
  Color textColor = const Color(0xFFE6E6DD);

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Return true to allow the page to be popped
        // Return false to prevent the page from being popped
        return false; // In this example, we prevent the page from being popped
      },
      child: Scaffold(
          backgroundColor: BgColor,
          body: SafeArea(
            child: Container(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/IntroScreenImage.png",
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFE6E6DD)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_right),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
