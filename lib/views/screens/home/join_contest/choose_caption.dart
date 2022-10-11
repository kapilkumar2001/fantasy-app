import 'package:create11/views/screens/home/join_contest/choosecaptain_playercard.dart';
import 'package:create11/views/screens/home/join_contest/team_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChooseCaptain extends StatefulWidget {
  var contestDetails, createdTeam;
  ChooseCaptain(this.contestDetails, this.createdTeam);

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
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: deviceWidth * 100,
            color: Colors.black,
            child: Column(
              children:  [
                SizedBox(height: deviceHeight*5,),
                Row(children: [
                  SizedBox(width: deviceWidth*10,),
                  Container(width: deviceWidth*15, child: Text("IND", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),),
                   CircleAvatar(
                                radius: deviceWidth * 7.5,
                                backgroundColor: Colors.black,
                                backgroundImage:
                                    const AssetImage("assets/images/ind.jpg"),
                              ),
                  
                  SizedBox(width: deviceWidth*5,),
                 Text("VS", style: TextStyle(color: Colors.white),),
                 SizedBox(width: deviceWidth*5,),
                  CircleAvatar(
                                radius: deviceWidth * 7.5,
                                backgroundColor: Colors.black,
                                backgroundImage:
                                    const AssetImage("assets/images/sl.jpg"),
                              ),
                  //    Image(image: AssetImage("assets/images/sl.jpg"), width: deviceWidth*15, ),
                  Container(width: deviceWidth*15,  child: Text("SL", textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),),
      
                ],),
                      
                 
                SizedBox(height: deviceHeight*5,),
                Text("Match starts in 14h:13m:12s", style: TextStyle(color: Colors.white)),
                SizedBox(height: deviceHeight*5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Container(
                    width: deviceWidth*40,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(deviceWidth*5),
                      child: Text("Captain: Get 2x Points", style: TextStyle(color: Colors.red),),
                    ),
                  ),
                  Container(
                    width: deviceWidth*40,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(deviceWidth*5),
                      child: Text("Vice Captain: Get 1.5x Points", style: TextStyle(color: Colors.green),),
                    ),
                  ),
                ],),
                SizedBox(height: deviceWidth*5,),
                Padding(
            padding: EdgeInsets.all(deviceWidth * 5),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TeamPreviewPage(widget.contestDetails, widget.createdTeam)),
                );
              },
              child: Container(
                color: Colors.white,
                height: deviceWidth * 10,
                width: deviceWidth * 80,
                child: Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
           SizedBox(height: deviceWidth*5,),
              ],
            ),
          ),
          Row(children: [
            Container(
              width: deviceWidth*55,
              child: Padding(
                padding: EdgeInsets.all(deviceWidth*3),
                child: Text("Players"),
              ),
            ),
            Container(
              width: deviceWidth*15,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical:  deviceWidth*3),
                child: Text("Points", textAlign: TextAlign.center,),
              ),
            ),
            Container(
              width: deviceWidth*15,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical:  deviceWidth*3),
                child: Text("C",  textAlign: TextAlign.center,),
              ),
            ),
            Container(
              width: deviceWidth*15,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical:  deviceWidth*3),
                child: Text("VC", textAlign: TextAlign.center,),
              ),
            ),
          ],),
          Divider(
            color: Colors.black12,
          ),
           ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount:
                    11,
                itemBuilder: (context, index) {
                  return ChooseCaptainPlayerCard();
                }),
          
        ]),
      ),
    );
  }
}
