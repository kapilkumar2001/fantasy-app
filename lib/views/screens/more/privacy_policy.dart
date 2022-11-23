import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {

  PdfViewerController? _pdfViewerController;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    _pdfViewerController!.jumpToPage(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
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