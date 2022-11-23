import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Legality extends StatefulWidget {
  const Legality({Key? key}) : super(key: key);

  @override
  State<Legality> createState() => _LegalityState();
}

class _LegalityState extends State<Legality> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("Legality"),
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