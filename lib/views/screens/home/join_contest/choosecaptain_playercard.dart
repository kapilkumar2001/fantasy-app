import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChooseCaptainPlayerCard extends StatefulWidget {
  const ChooseCaptainPlayerCard({Key? key}) : super(key: key);

  @override
  State<ChooseCaptainPlayerCard> createState() => _CreateTeamPlayerCardState();
}

class _CreateTeamPlayerCardState extends State<ChooseCaptainPlayerCard> {
  bool addicon = true;

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Row(children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: deviceWidth*3),
        child: Container(
          width: deviceWidth * 55,
          child: Row(
            children: [
              
              SizedBox(
                width: deviceWidth * 2,
              ),
              CircleAvatar(
                radius: deviceWidth * 4,
                backgroundColor: Colors.black87,
                backgroundImage: const AssetImage("assets/images/ind.jpg"),
              ),
              SizedBox(
                width: deviceWidth * 2,
              ),
              Container(
                  width: deviceWidth * 40,
                  child: const Text(
                    "W Perkins",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
      Container(width: deviceWidth * 15, child: const Text("15", textAlign: TextAlign.center,)),
      Container(
          width: deviceWidth * 15,
          child: InkWell(
              onTap: () {
                setState(() {
                  addicon == true ? addicon = false : addicon = true;
                });
              },
              child: addicon == true
                  ? Icon(
                      Icons.add_circle_outline,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.close,
                      color: Colors.red,
                    )
                    
                    )),
      Container(
          width: deviceWidth * 15,
          child: InkWell(
              onTap: () {
                setState(() {
                  addicon == true ? addicon = false : addicon = true;
                });
              },
              child: addicon == true
                  ? Icon(
                      Icons.add_circle_outline,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.close,
                      color: Colors.red,
                    )
                    
                    ))
    ]);
  }
}