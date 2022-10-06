import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateTeamPlayerCard extends StatefulWidget {
  const CreateTeamPlayerCard({Key? key}) : super(key: key);

  @override
  State<CreateTeamPlayerCard> createState() => _CreateTeamPlayerCardState();
}

class _CreateTeamPlayerCardState extends State<CreateTeamPlayerCard> {

  bool addicon = true;

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Row(children: [
      Container(
        width: deviceWidth * 70,
        child: Row(
          children: [
            Container(width: deviceWidth * 5, child: const Text("WI-L")),
            SizedBox(
              width: deviceWidth * 1,
            ),
            CircleAvatar(
              radius: deviceWidth * 5,
              backgroundColor: Colors.black87,
              backgroundImage: const AssetImage("assets/images/sl.jpg"),
            ),
            SizedBox(
              width: deviceWidth * 3,
            ),
            Column(
              children: [
                Container(
                    width: deviceWidth * 50,
                    child: const Text(
                      "W Perkins",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Container(
                    width: deviceWidth * 50, child: const Text("Sel by 24.97%"))
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
              ) : Icon(
                Icons.close,
                color: Colors.red,
              )))
    ]);
  }
}
