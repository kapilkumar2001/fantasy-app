import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(deviceWidth * 5),
          child: Container(
              width: deviceWidth * 90,
              child: Text(
                "Welcome to",
                style: TextStyle(fontSize: deviceWidth * 5),
              )),
        ),
        Padding(
          padding: EdgeInsets.all(deviceWidth * 5),
          child: Container(
              width: deviceWidth * 90,
              child: Text(
                "Create11",
                style: TextStyle(fontSize: deviceWidth * 8),
              )),
        )
      ],
    );
  }
}
