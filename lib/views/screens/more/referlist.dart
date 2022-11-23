import 'package:flutter/material.dart';

class ReferList extends StatefulWidget {
  const ReferList({Key? key}) : super(key: key);

  @override
  State<ReferList> createState() => _ReferListState();
}

class _ReferListState extends State<ReferList> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("Refer List"),
        backgroundColor: Colors.red,
       // elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Divider(
          //   height: deviceHeight * 0.5,
          //   color: Colors.black38,
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth*4, vertical: deviceWidth*2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Total Refer"),
              Text("5")
            ],),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          
          ListTile(
            leading: CircleAvatar(),
            title: Text("Vikas Kumar"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Shubham Singh"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Divyansh Patel"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Divesh Kumar"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Nishant Singh"),
          )
        ]
      ),
    );
  }
}