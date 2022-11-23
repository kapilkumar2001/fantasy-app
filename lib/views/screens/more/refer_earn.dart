import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {

    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        title: Text("Refer & Earn"),
        backgroundColor: Colors.red,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: deviceHeight*1,),
          Center(
            child: Text("Your referral code: "),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth*30, vertical: deviceHeight*2),
              child: Container(
              
                decoration: BoxDecoration(color: Colors.yellow),
                child: Padding(
                  padding: EdgeInsets.all(deviceWidth*3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("XYZWX321343"),
                      SizedBox(width: deviceWidth*5,),
                      Icon(Icons.copy)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: deviceHeight*2,),
          Text("How does it work?"),
          SizedBox(height: deviceHeight*1,),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Invite your friends"),
            subtitle: Text("Just share your referral code"),
          ),

          ListTile(
            leading: CircleAvatar(),
            title: Text("Signup and deposit"),
            subtitle: Text("Refer your friends for signup and deposit"),
          ),

          ListTile(
            leading: CircleAvatar(),
            title: Text("Earn 100RS"),
            subtitle: Text("You will get 100RS and your friend will get 100RS"),
          ),

          ListTile(
            leading: CircleAvatar(),
            title: Text("You get 20% lifetime"),
            subtitle: Text("You get 20% lifetime commission on refer"),
          ),

          SizedBox(height: deviceHeight*2,),

          GestureDetector(
                onTap: (){
                  // Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => const DashBoard()),
                  //           );
                },
                child: Container(
                            width: deviceWidth * 80,
                            decoration: BoxDecoration(
                                color: Colors.green,
                              //  border: Border.all(),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(deviceWidth * 2))
                                    ),
                            child: Padding(
                              padding: EdgeInsets.all(deviceWidth * 5),
                              child: Text(
                                "Refer Friend",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviceWidth * 4,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
              ),
        ],
      ),
    );
  }
}