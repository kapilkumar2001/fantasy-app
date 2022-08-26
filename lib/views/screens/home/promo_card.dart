import 'package:flutter/material.dart';

class PromoCard extends StatefulWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  State<PromoCard> createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Container(
      height: deviceHeight * 10,
      width: deviceWidth * 90,
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 1,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: Center(
          child: Column(children: [
        SizedBox(
          height: deviceHeight * 2,
        ),
        Text(
          "SUBSCRIBE US ON",
          style: TextStyle(
              color: Colors.white,
              fontSize: deviceHeight * 2,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          "YOUTUBE",
          style: TextStyle(
              color: Colors.white,
              fontSize: deviceHeight * 4,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ])),
    );
  }
}
