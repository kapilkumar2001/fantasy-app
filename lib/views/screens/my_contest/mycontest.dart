import 'package:flutter/material.dart';

class MyContestPage extends StatefulWidget {
  const MyContestPage({ Key? key }) : super(key: key);

  @override
  State<MyContestPage> createState() => _MyContestPageState();
}

class _MyContestPageState extends State<MyContestPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("My Contest - Coming Soon")
    );
  }
}