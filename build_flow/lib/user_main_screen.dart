import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserMainScreen extends StatefulWidget {
  const UserMainScreen({super.key});

  @override
  State<UserMainScreen> createState() => _UserMainScreenState();
}

class _UserMainScreenState extends State<UserMainScreen> {
  @override
  Widget build(BuildContext context) {
    Color BgColor = const Color(0xFF2B2B2B);
    Color textColor = const Color(0xFFE6E6DD);
    return WillPopScope(
      onWillPop: () async {
        // Return true to allow the page to be popped
        // Return false to prevent the page from being popped
        return false; // In this example, we prevent the page from being popped
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Image.asset("assets/BuildFlowLogo.png"),
          title: Text(
            "BuildFlow",
            style: TextStyle(color: textColor, fontSize: 20),
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {
                // Exit the Flutter application
                SystemNavigator.pop();
              },
              child: Icon(Icons.exit_to_app),
            ),
          ],
        ),
        body: SafeArea(child: Container()),
      ),
    );
  }
}
