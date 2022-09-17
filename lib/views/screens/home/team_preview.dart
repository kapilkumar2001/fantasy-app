import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TeamPreviewPage extends StatefulWidget {
  const TeamPreviewPage({Key? key}) : super(key: key);

  @override
  State<TeamPreviewPage> createState() => _TeamPreviewPageState();
}

class _TeamPreviewPageState extends State<TeamPreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Captain and Vice Captain"),
        backgroundColor: Colors.black,
      ),
    );
  }
}