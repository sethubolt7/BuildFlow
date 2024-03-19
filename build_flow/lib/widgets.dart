import 'package:build_flow/login_page.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final double borderRadius;

  const TextFieldWidget(
      {super.key, required this.hintText, required this.borderRadius});

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFE6E6DD),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

class SwipeButton extends StatefulWidget {
  final String text;

  const SwipeButton({super.key, required this.text});

  @override
  _SwipeButtonState createState() => _SwipeButtonState();
}

class _SwipeButtonState extends State<SwipeButton> {
  double alignX = -1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (dragDetails) {
        setState(() {
          alignX = (dragDetails.localPosition.dx / context.size!.width) * 2 - 1;
          if (alignX > 1) alignX = 1;
          if (alignX < -1) alignX = -1;
        });
      },
      onHorizontalDragEnd: (dragDetails) {
        setState(() {
          alignX = -1;
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
          ); // // Reset to start when drag ends
        });
      },
      // child: Padding(
      //   padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Container(
          height: 80,
          width: BorderSide.strokeAlignCenter,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Align(
            alignment: Alignment(alignX, 0),
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE6E6DD),
              ),
              child: Center(
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: const Center(
                    child: Text(
                      "SWIPE->",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 10),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      // ),
    );
  }
}
