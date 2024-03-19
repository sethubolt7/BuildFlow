import 'package:build_flow/user_main_screen.dart';
import 'package:build_flow/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Color BgColor = const Color(0xFF2B2B2B);
  Color textColor = const Color(0xFFE6E6DD);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      "assets/IntroScreenImage.png",
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const TextFieldWidget(hintText: "Job ID", borderRadius: 20.0),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: TextFieldWidget(hintText: "PassWord", borderRadius: 20.0),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => UserMainScreen()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFE6E6DD)),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                  color: Color(0xFFE6E6DD),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_right),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                // )
              )
            ],
          ),
        ),
      ),
    );
  }
}
