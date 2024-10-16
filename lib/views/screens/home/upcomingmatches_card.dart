import 'dart:convert';

import 'package:create11/services/data.dart';
import 'package:create11/views/screens/home/all_contests_page.dart';
import 'package:flutter/material.dart';

class UpcomingMatchesCard extends StatefulWidget {
  var matchDetails;
  UpcomingMatchesCard(this.matchDetails);

  @override
  State<UpcomingMatchesCard> createState() => _UpcomingMatchesCardState();
}

class _UpcomingMatchesCardState extends State<UpcomingMatchesCard> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    String tournamentName =
        jsonDecode(widget.matchDetails['tournament'])['name'];
    var teamA = jsonDecode(widget.matchDetails['teams'])['a'];
    var teamB = jsonDecode(widget.matchDetails['teams'])['b'];
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AllContestsPage(widget.matchDetails)),
        );
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
              color: Colors.white38,
              borderRadius: BorderRadius.circular(deviceWidth * 5)),
          child: Column(children: [
            SizedBox(
              height: deviceHeight * 1.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: deviceWidth * 70,
                    child: Text(
                      tournamentName,
                      style: TextStyle(
                          fontSize: deviceWidth * 4.5,
                          fontWeight: FontWeight.normal,
                          color: Colors.black38),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    size: deviceWidth * 5,
                  )
                ],
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
                            teamA['name'],
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
                                  const AssetImage("assets/images/wind.jpg"),
                            ),
                            SizedBox(
                              width: deviceWidth * 1,
                            ),
                            Text(
                              teamA['code'],
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
                      width: deviceWidth * 19,
                      child: Text(
                        widget.matchDetails['start_date'],
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
                            teamB['name'],
                            overflow: TextOverflow.visible,
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
                                  teamB['code'],
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
                                      const AssetImage("assets/images/ind.jpg"),
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
            // Divider(
            //   height: deviceHeight * 1.5,
            //   color: Colors.black12,
            // ),
            // SizedBox(
            //   height: deviceHeight * 0.5,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
            //   child: Row(
            //     children: [
            //       CircleAvatar(
            //         radius: deviceWidth * 2.2,
            //         backgroundColor: Colors.green,
            //         child: Text(
            //           'M',
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: deviceWidth * 3),
            //         ),
            //       ),
            //       SizedBox(
            //         width: deviceWidth * 2,
            //       ),
            //       Container(
            //         width: deviceWidth * 40,
            //         child: Text(
            //           '₹ 20 LAKH',
            //           style: TextStyle(
            //               fontSize: deviceWidth * 4.3,
            //               fontWeight: FontWeight.w500,
            //               color: Colors.green),
            //           textAlign: TextAlign.start,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: deviceHeight * 1,
            ),
          ]),
        ),
      ),
    );
  }
}
