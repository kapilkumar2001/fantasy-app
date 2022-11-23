import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class FantasyPointsSystem extends StatefulWidget {
  const FantasyPointsSystem({Key? key}) : super(key: key);

  @override
  State<FantasyPointsSystem> createState() => _FantasyPointsSystemState();
}

class _FantasyPointsSystemState extends State<FantasyPointsSystem> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("Fantasy Point System"),
        backgroundColor: Colors.red,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Container(
        child: SfPdfViewer.asset('assets/docs/PrivacyPolicy.pdf'),
      ),
    );
  }
}