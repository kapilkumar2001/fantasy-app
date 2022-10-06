import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChooseCaptain extends StatefulWidget {
  const ChooseCaptain({Key? key}) : super(key: key);

  @override
  State<ChooseCaptain> createState() => _ChooseCaptainState();
}

class _ChooseCaptainState extends State<ChooseCaptain> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0,
          title: const Text("Choose Captain and Vice Captain"),
        //  actions: const [Icon(Icons.question_mark_rounded)],
        ),
      body: Column(
        children: [
          Container(
            
            width: deviceWidth*100,
            child: Column(
              children: [
                ListTile(
                  leading:
                  //  Row(
                  //   children: [
                  //     Text("India", style: TextStyle(color: Colors.white),),
                      Image(image: AssetImage("assets/images/ind.jpg")),
                  //   ],
                  // ),
                  title: Text("VS"),
                  trailing: 
                  // Row(
                  //   children: [
                  //     Text("Sri Lanka", style: TextStyle(color: Colors.white),),
                      Image(image: AssetImage("assets/images/sl.jpg")),
                  //   ],
                  // ),
                ),
                Text("Match starts in 14h:13m:12s"),

              ],
            ),
          )
        ]
      ),
    );
  }
}