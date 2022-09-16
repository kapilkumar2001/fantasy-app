import 'package:create11/views/screens/home/all_contests_page.dart';
import 'package:flutter/material.dart';

class MyMatchesCard extends StatefulWidget {
  bool isMatchLive;
  bool isMatchCompleted; 
  MyMatchesCard(
      {required bool this.isMatchCompleted, required bool this.isMatchLive});

  @override
  State<MyMatchesCard> createState() => _MyMatchesCardState();
}

class _MyMatchesCardState extends State<MyMatchesCard> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => AllContestsPage()),
        // );
      },
      child: Card(
        shadowColor: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(deviceWidth * 5),
        ),
        child: Container(
          width: deviceWidth * 90,
          // height: deviceHeight * 19,
          decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(deviceWidth * 5)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: deviceHeight * 1.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
              child: Text(
                'Dresden T10 Cricket Series',
                style: TextStyle(
                    fontSize: deviceWidth * 4.5,
                    fontWeight: FontWeight.normal,
                    color: Colors.black38),
                textAlign: TextAlign.start,
              ),
            ),
            Divider(
              height: deviceHeight * 1.5,
              color: Colors.black12,
            ),
            SizedBox(
              height: deviceHeight * 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: deviceWidth * 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'RC Dresden',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.normal,
                              fontSize: deviceWidth * 4.3,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: deviceHeight * 0.5,
                          ),
                          Row(children: [
                            CircleAvatar(
                              radius: deviceWidth * 5,
                              backgroundColor: Colors.black87,
                              backgroundImage:
                                  const AssetImage("assets/images/sl.jpg"),
                            ),
                            SizedBox(
                              width: deviceWidth * 1,
                            ),
                            Text(
                              "RCD",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: deviceWidth * 4.3,
                              ),
                            )
                          ]),
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth * 20,
                      child: widget.isMatchCompleted
                          ? Text(
                              "Winner Declared",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: deviceWidth * 4),
                            )
                          : widget.isMatchLive
                              ? Text(
                                  "Live",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: deviceWidth * 4),
                                )
                              : Text(
                                  "40m 50s",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: deviceWidth * 4.3),
                                ),
                    ),
                    Container(
                      width: deviceWidth * 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'FC Viktoria',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.normal,
                                fontSize: deviceWidth * 4.3),
                          ),
                          SizedBox(
                            height: deviceHeight * 0.5,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "VIK",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: deviceWidth * 4.3,
                                  ),
                                ),
                                SizedBox(
                                  width: deviceWidth * 1,
                                ),
                                CircleAvatar(
                                  radius: deviceWidth * 5,
                                  backgroundColor: Colors.black87,
                                  backgroundImage:
                                      const AssetImage("assets/images/aus.jpg"),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.5,
            ),
            Divider(
              height: deviceHeight * 1.5,
              color: Colors.black12,
            ),
            SizedBox(
              height: deviceHeight * 0.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: widget.isMatchCompleted
                        ? deviceWidth * 20
                        : deviceWidth * 40,
                    child: Text(
                      '1 Team',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: deviceWidth * 4.5,
                          fontWeight: FontWeight.normal,
                          color: Colors.black87),
                    ),
                  ),
                  Container(
                    width: widget.isMatchCompleted
                        ? deviceWidth * 20
                        : deviceWidth * 40,
                    child: Text(
                      '1 Contests',
                      textAlign: widget.isMatchCompleted
                          ? TextAlign.center
                          : TextAlign.end,
                      style: TextStyle(
                          fontSize: deviceWidth * 4.5,
                          fontWeight: FontWeight.normal,
                          color: Colors.black38),
                    ),
                  ),
                  widget.isMatchCompleted
                      ? Container(
                          width: deviceWidth * 40,
                          child: Text(
                            'YOU WON: ₹1000000',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: deviceWidth * 4.5,
                                fontWeight: FontWeight.normal,
                                color: Colors.black87),
                          ),
                        )
                      : Container()
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight * 1.5,
            ),
          ]),
        ),
      ),
    );
  }
}
