import 'dart:convert';

import 'package:create11/services/data.dart';
import 'package:create11/views/screens/home/join_contest/choose_caption.dart';
import 'package:create11/views/screens/home/join_contest/create_team_playercard.dart';
import 'package:create11/views/screens/home/join_contest/team_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateTeamPage extends StatefulWidget {
  var contestDetails, matchDetails;
  CreateTeamPage(this.contestDetails, this.matchDetails);

  @override
  State<CreateTeamPage> createState() => _CreateTeamPageState();
}

class _CreateTeamPageState extends State<CreateTeamPage> {

  List teamA = [];
  List teamB = [];
  
  @override
  void initState() {
    getMatchSquad();
    super.initState();
  }

  Future getMatchSquad() async {
    // TODO: user original match key
    teamA = (await Data().getMatchSquad("c__match__nez_vs_wz__0d57e"))['team_a_playing_xi'].toList();
    teamB = (await Data().getMatchSquad("c__match__nez_vs_wz__0d57e"))['team_b_playing_xi'].toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var team1 = jsonDecode(widget.matchDetails['teams'])['a'];
    var team2 = jsonDecode(widget.matchDetails['teams'])['b'];
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0,
          title: Text(widget.matchDetails['start_date']),
          actions: const [Icon(Icons.question_mark_rounded)],
        ),
        body: Column(children: [
          Container(
            width: deviceWidth * 100,
            color: Colors.black87,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: deviceWidth * 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: deviceWidth * 5,
                          backgroundColor: Colors.black87,
                          backgroundImage:
                              const AssetImage("assets/images/sl.jpg"),
                        ),
                        SizedBox(
                          width: deviceWidth * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              team1['code'],
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "0",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "Players",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "0/11",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "Credits Left",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "100.0",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children:  [
                            Text(
                              team2['code'],
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "0",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          width: deviceWidth * 2,
                        ),
                        CircleAvatar(
                          radius: deviceWidth * 5,
                          backgroundColor: Colors.black87,
                          backgroundImage:
                              const AssetImage("assets/images/sl.jpg"),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          Container(
            color: Colors.black87,
            width: deviceWidth * 100,
            child: SliderTheme(
              child: Slider(
                activeColor: Colors.green,
                inactiveColor: Colors.white70,
                value: 3,
                max: 11,
                divisions: 11,
                onChanged: (double value) {
                  setState(() {});
                },
              ),
              data: SliderTheme.of(context).copyWith(
                  trackHeight: deviceHeight * 0.5,
                  thumbColor: Colors.transparent,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 0.0)),
            ),
          ),
          Container(
              color: Colors.black87,
              width: deviceWidth * 100,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Max 11 players from a team",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.red[900],
                          borderRadius: BorderRadius.all(
                              Radius.circular(deviceWidth * 1))),
                      // width: deviceWidth*20,
                      child: Padding(
                        padding: EdgeInsets.all(deviceWidth * 2),
                        child: const Text(
                          "Clear Team",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Container(
            height: deviceHeight * 2,
            width: deviceWidth * 100,
            color: Colors.black87,
          ),
          Padding(
            padding: EdgeInsets.all(deviceWidth * 2),
            child: Text(
              "Feature is for your convenience. Please do due research before creating team.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: deviceWidth * 3),
            ),
          ),
          Divider(
            height: deviceHeight * 1,
            color: Colors.black87,
          ),
          // SizedBox(
          //   height: deviceHeight * 6.5,
          //   child: AppBar(
          //     backgroundColor: Colors.white,
          //     bottom: TabBar(
          //       labelColor: Colors.red[900],
          //       indicatorColor: Colors.red[900],
          //       indicatorSize: TabBarIndicatorSize.tab,
          //       unselectedLabelColor: Colors.black45,
          //       labelStyle: TextStyle(fontSize: deviceWidth * 5),
          //       isScrollable: true,
          //       tabs: const [
          //         Tab(
          //           text: "WK",
          //         ),
          //         Tab(
          //           text: "BAT",
          //         ),
          //         Tab(
          //           text: "AR",
          //         ),
          //         Tab(text: "BOWL")
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Container(
                      color: Colors.white24,
                      width: deviceWidth * 100,
                      child: Padding(
                        padding: EdgeInsets.all(deviceWidth * 2),
                        child: const Text("Pick 11 Players"),
                      ),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: deviceWidth * 65,
                        ),
                        Container(
                          width: deviceWidth * 15,
                          child: const Text("POINTS"),
                        ),
                        Container(
                          width: deviceWidth * 15,
                          child: const Text("CREDITS"),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: teamA.length,
                        itemBuilder: (context, index) {
                          return CreateTeamPlayerCard(teamA[index] );
                        }),
                       ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: teamB.length,
                        itemBuilder: (context, index) {
                          return CreateTeamPlayerCard(teamB[index] );
                        }),
                  ],
                )),
            // child: TabBarView(
            //   children: [
            //     SingleChildScrollView(
            //         child: Column(
            //       children: [
            //         Container(
            //           color: Colors.white24,
            //           width: deviceWidth * 100,
            //           child: Padding(
            //             padding: EdgeInsets.all(deviceWidth * 2),
            //             child: const Text("Pick 1-4 Wicket-Keepar"),
            //           ),
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         Row(
            //           children: [
            //             SizedBox(
            //               width: deviceWidth * 65,
            //             ),
            //             Container(
            //               width: deviceWidth * 15,
            //               child: const Text("POINTS"),
            //             ),
            //             Container(
            //               width: deviceWidth * 15,
            //               child: const Text("CREDITS"),
            //             ),
            //           ],
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         ListView.builder(
            //             shrinkWrap: true,
            //             physics: const NeverScrollableScrollPhysics(),
            //             itemCount: 4,
            //             itemBuilder: (context, index) {
            //               return Column(
            //                 children: [
            //                   CreateTeamPlayerCard(),
            //                   const Divider(
            //                     color: Colors.black87,
            //                   )
            //                 ],
            //               );
            //             }),
            //       ],
            //     )),
            //     SingleChildScrollView(
            //         child: Column(
            //       children: [
            //         Container(
            //           color: Colors.white24,
            //           width: deviceWidth * 100,
            //           child: Padding(
            //             padding: EdgeInsets.all(deviceWidth * 2),
            //             child: const Text("Pick 4-6 Batsman"),
            //           ),
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         Row(
            //           children: [
            //             SizedBox(
            //               width: deviceWidth * 65,
            //             ),
            //             Container(
            //               width: deviceWidth * 15,
            //               child: const Text("POINTS"),
            //             ),
            //             Container(
            //               width: deviceWidth * 15,
            //               child: const Text("CREDITS"),
            //             ),
            //           ],
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         ListView.builder(
            //             shrinkWrap: true,
            //             physics: const NeverScrollableScrollPhysics(),
            //             itemCount: 9,
            //             itemBuilder: (context, index) {
            //               return Column(
            //                 children: [
            //                   Row(children: [
            //                     Container(
            //                       width: deviceWidth * 70,
            //                       child: Row(
            //                         children: [
            //                           Container(
            //                               width: deviceWidth * 5,
            //                               child: const Text("WI-L")),
            //                           SizedBox(
            //                             width: deviceWidth * 1,
            //                           ),
            //                           CircleAvatar(
            //                             radius: deviceWidth * 5,
            //                             backgroundColor: Colors.black87,
            //                             backgroundImage: const AssetImage(
            //                                 "assets/images/sl.jpg"),
            //                           ),
            //                           SizedBox(
            //                             width: deviceWidth * 3,
            //                           ),
            //                           Column(
            //                             children: [
            //                               Container(
            //                                   width: deviceWidth * 50,
            //                                   child: const Text(
            //                                     "W Perkins",
            //                                     style: TextStyle(
            //                                         fontWeight:
            //                                             FontWeight.bold),
            //                                   )),
            //                               Container(
            //                                   width: deviceWidth * 50,
            //                                   child:
            //                                       const Text("Sel by 24.97%"))
            //                             ],
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                     Container(
            //                         width: deviceWidth * 9,
            //                         child: const Text("15")),
            //                     Container(
            //                         width: deviceWidth * 9,
            //                         child: const Text("8.5")),
            //                     Container(
            //                         width: deviceWidth * 9,
            //                         child: const Icon(
            //                           Icons.add_circle_outline,
            //                           color: Colors.green,
            //                         ))
            //                   ]),
            //                   const Divider(
            //                     color: Colors.black87,
            //                   )
            //                 ],
            //               );
            //             }),
            //       ],
            //     )),
            //     SingleChildScrollView(
            //         child: Column(
            //       children: [
            //         Container(
            //           color: Colors.white24,
            //           width: deviceWidth * 100,
            //           child: Padding(
            //             padding: EdgeInsets.all(deviceWidth * 2),
            //             child: const Text("Pick 2-4 All Rounder"),
            //           ),
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         Row(
            //           children: [
            //             SizedBox(
            //               width: deviceWidth * 65,
            //             ),
            //             Container(
            //               width: deviceWidth * 15,
            //               child: const Text("POINTS"),
            //             ),
            //             Container(
            //               width: deviceWidth * 15,
            //               child: const Text("CREDITS"),
            //             ),
            //           ],
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         ListView.builder(
            //             shrinkWrap: true,
            //             physics: const NeverScrollableScrollPhysics(),
            //             itemCount: 6,
            //             itemBuilder: (context, index) {
            //               return Column(
            //                 children: [
            //                   Row(children: [
            //                     Container(
            //                       width: deviceWidth * 70,
            //                       child: Row(
            //                         children: [
            //                           Container(
            //                               width: deviceWidth * 5,
            //                               child: const Text("WI-L")),
            //                           SizedBox(
            //                             width: deviceWidth * 1,
            //                           ),
            //                           CircleAvatar(
            //                             radius: deviceWidth * 5,
            //                             backgroundColor: Colors.black87,
            //                             backgroundImage: const AssetImage(
            //                                 "assets/images/sl.jpg"),
            //                           ),
            //                           SizedBox(
            //                             width: deviceWidth * 3,
            //                           ),
            //                           Column(
            //                             children: [
            //                               Container(
            //                                   width: deviceWidth * 50,
            //                                   child: const Text(
            //                                     "W Perkins",
            //                                     style: TextStyle(
            //                                         fontWeight:
            //                                             FontWeight.bold),
            //                                   )),
            //                               Container(
            //                                   width: deviceWidth * 50,
            //                                   child:
            //                                       const Text("Sel by 24.97%"))
            //                             ],
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                     Container(
            //                         width: deviceWidth * 9,
            //                         child: const Text("15")),
            //                     Container(
            //                         width: deviceWidth * 9,
            //                         child: const Text("8.5")),
            //                     Container(
            //                         width: deviceWidth * 9,
            //                         child: const Icon(
            //                           Icons.add_circle_outline,
            //                           color: Colors.green,
            //                         ))
            //                   ]),
            //                   const Divider(
            //                     color: Colors.black87,
            //                   )
            //                 ],
            //               );
            //             }),
            //       ],
            //     )),
            //     SingleChildScrollView(
            //         child: Column(
            //       children: [
            //         Container(
            //           color: Colors.white24,
            //           width: deviceWidth * 100,
            //           child: Padding(
            //             padding: EdgeInsets.all(deviceWidth * 2),
            //             child: const Text("Pick 3-5 Bowler"),
            //           ),
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         Row(
            //           children: [
            //             SizedBox(
            //               width: deviceWidth * 65,
            //             ),
            //             Container(
            //               width: deviceWidth * 15,
            //               child: const Text("POINTS"),
            //             ),
            //             Container(
            //               width: deviceWidth * 15,
            //               child: const Text("CREDITS"),
            //             ),
            //           ],
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         ListView.builder(
            //             shrinkWrap: true,
            //             physics: const NeverScrollableScrollPhysics(),
            //             itemCount: 8,
            //             itemBuilder: (context, index) {
            //               return Column(
            //                 children: [
            //                   Row(children: [
            //                     Container(
            //                       width: deviceWidth * 70,
            //                       child: Row(
            //                         children: [
            //                           Container(
            //                               width: deviceWidth * 5,
            //                               child: const Text("WI-L")),
            //                           SizedBox(
            //                             width: deviceWidth * 1,
            //                           ),
            //                           CircleAvatar(
            //                             radius: deviceWidth * 5,
            //                             backgroundColor: Colors.black87,
            //                             backgroundImage: const AssetImage(
            //                                 "assets/images/sl.jpg"),
            //                           ),
            //                           SizedBox(
            //                             width: deviceWidth * 3,
            //                           ),
            //                           Column(
            //                             children: [
            //                               Container(
            //                                   width: deviceWidth * 50,
            //                                   child: const Text(
            //                                     "W Perkins",
            //                                     style: TextStyle(
            //                                         fontWeight:
            //                                             FontWeight.bold),
            //                                   )),
            //                               Container(
            //                                   width: deviceWidth * 50,
            //                                   child:
            //                                       const Text("Sel by 24.97%"))
            //                             ],
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                     Container(
            //                         width: deviceWidth * 9,
            //                         child: const Text("15")),
            //                     Container(
            //                         width: deviceWidth * 9,
            //                         child: const Text("8.5")),
            //                     Container(
            //                         width: deviceWidth * 9,
            //                         child: const Icon(
            //                           Icons.add_circle_outline,
            //                           color: Colors.green,
            //                         ))
            //                   ]),
            //                   const Divider(
            //                     color: Colors.black87,
            //                   )
            //                 ],
            //               );
            //             }),
            //       ],
            //     )),
            //   ],
            // ),
          )
        ]),
        bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TeamPreviewPage(widget.contestDetails)),
            );
          },
          child: Padding(
            padding: EdgeInsets.all(deviceWidth * 5),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChooseCaptain(widget.contestDetails)),
                );
              },
              child: Container(
                color: Colors.red[900],
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
        ),
      ),
    );
  }
}
