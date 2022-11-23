import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms And Conditions"),
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