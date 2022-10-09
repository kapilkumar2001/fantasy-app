import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateTeamPlayerCard extends StatefulWidget {
  var playerDetails;
  CreateTeamPlayerCard(this.playerDetails);

  @override
  State<CreateTeamPlayerCard> createState() => _CreateTeamPlayerCardState();
}

class _CreateTeamPlayerCardState extends State<CreateTeamPlayerCard> {
  bool addicon = true;

  @override
  Widget build(BuildContext context) {
    print('player - ${widget.playerDetails}');
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Column(
      children: [
        Row(
          children: [
          Container(
            width: deviceWidth * 70,
            child: Row(
              children: [
                Container(width: deviceWidth * 5, child: Text(widget.playerDetails['nationality']['code'])),
                SizedBox(
                  width: deviceWidth * 1,
                ),
                CircleAvatar(child: Icon(Icons.person_rounded, size: deviceWidth*5, color: Colors.white), backgroundColor: Colors.grey,),
                
                SizedBox(
                  width: deviceWidth * 3,
                ),
                Column(
                  children: [
                    Container(
                        width: deviceWidth * 50,
                        child: Text(
                          widget.playerDetails['name'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Container(
                        width: deviceWidth * 50, child: Text(widget.playerDetails['seasonal_role']))
                  ],
                )
              ],
            ),
          ),
          Container(width: deviceWidth * 9, child: const Text("15")),
          Container(width: deviceWidth * 9, child: const Text("8.5")),
          Container(
              width: deviceWidth * 9,
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
                        )))
        ]),
        const Divider(
                                color: Colors.black87,
                              )
      ],
    );
  }
}
