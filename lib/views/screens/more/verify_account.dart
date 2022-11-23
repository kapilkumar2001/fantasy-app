import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({Key? key}) : super(key: key);

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify Account"),
        backgroundColor: Colors.red,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Column(children: [
        ListTile(
          leading: CircleAvatar(),
          title: Text("Phone"),
          subtitle: Text("9012345621", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.check_circle, color: Colors.green,),
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text("Email"),
          subtitle: Text("xyzwseda@gmail.com", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.check_circle, color: Colors.green,),
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text("Pan Card"),
          subtitle: Text("--", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          trailing: Container(

            decoration: BoxDecoration(
                                color: Colors.green,
                              //  border: Border.all(),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(deviceWidth * 2))
                                    ),
            child: Padding(
            padding: EdgeInsets.all(deviceWidth*2),
            child: Text("Verify", style: TextStyle(color: Colors.white),),
          )),
        ),
        ListTile(
          leading: CircleAvatar(),
          title: Text("Bank"),
          subtitle: Text("--", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          trailing: Container(

            decoration: BoxDecoration(
                                color: Colors.green,
                              //  border: Border.all(),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(deviceWidth * 2))
                                    ),
            child: Padding(
            padding: EdgeInsets.all(deviceWidth*2),
            child: Text("Verify", style: TextStyle(color: Colors.white),),
          )),
        ),
      ]),
    );
  }
}