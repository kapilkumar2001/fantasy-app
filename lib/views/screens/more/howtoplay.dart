import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HowToPlay extends StatefulWidget {
  const HowToPlay({Key? key}) : super(key: key);

  @override
  State<HowToPlay> createState() => _HowToPlayState();
}

class _HowToPlayState extends State<HowToPlay> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("How to play"),
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