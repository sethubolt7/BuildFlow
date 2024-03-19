import 'package:build_flow/widgets.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  Color BgColor = const Color(0xFF2B2B2B);
  Color textColor = const Color(0xFFE6E6DD);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  "assets/BuildFlowLogo.png",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SwipeButton(text: "SWIPE IT_>"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Stack(
//           children: [
//             Column(
//               children: [
//                 Image.asset(
//                   "assets/IntroScreenImage.png",
//                   fit: BoxFit.fill,
//                 )
//               ],
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Padding(
//                 padding: const EdgeInsets.all(30.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context) => LoginPage()),
//                     );
//                   },
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all<Color>(
//                         const Color(0xFFE6E6DD)),
//                     foregroundColor:
//                         MaterialStateProperty.all<Color>(Colors.black),
//                   ),
//                   child: const Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         "Get Started",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Icon(Icons.arrow_right),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),