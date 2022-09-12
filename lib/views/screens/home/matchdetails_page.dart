import 'package:create11/views/screens/home/home_page.dart';
import 'package:create11/views/screens/home/mymatches_card.dart';
import 'package:create11/views/screens/others/compare_teams.dart';
import 'package:flutter/material.dart';

class MatchDetailsPage extends StatefulWidget {
  const MatchDetailsPage({Key? key}) : super(key: key);

  @override
  State<MatchDetailsPage> createState() => _MatchDetailsPageState();
}

class _MatchDetailsPageState extends State<MatchDetailsPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ZIM vs BAN"),
          backgroundColor: Colors.red[900],
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              //  height: deviceHeight * 15,
              color: Colors.red[900],
              child: Padding(
                padding: EdgeInsets.all(deviceWidth * 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: deviceHeight * 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: deviceWidth * 30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ZIM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceHeight * 2),
                                ),
                                Text("135/8 (20)",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: deviceHeight * 2.3))
                              ],
                            ),
                          ),
                          Row(children: [
                            CircleAvatar(
                              radius: deviceHeight * 0.7,
                              backgroundColor: Colors.green,
                            ),
                            SizedBox(
                              width: deviceWidth * 1,
                            ),
                            Container(
                              width: deviceWidth * 15,
                              child: Text(
                                "Completed",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: deviceHeight * 1.5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ]),
                          Container(
                            width: deviceWidth * 30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "BAN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceHeight * 2),
                                ),
                                Text("136/3 (17.3)",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: deviceHeight * 2.3))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth * 90,
                      child: Center(
                        child: Text(
                          "Bangladesh won by 7 wickets",
                          style: TextStyle(
                              color: Colors.white, fontSize: deviceHeight * 2),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: deviceHeight * 6.5,
              child: AppBar(
                backgroundColor: Colors.white,
                bottom: TabBar(
                  labelColor: Colors.red[900],
                  indicatorColor: Colors.red[900],
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.black45,
                  labelStyle: TextStyle(fontSize: deviceWidth * 5),
                  isScrollable: true,
                  tabs: const [
                    Tab(
                      text: "Full Match",
                    ),
                    Tab(
                      text: "Batting",
                    ),
                    Tab(
                      text: "Bowling",
                    ),
                    Tab(
                      text: "Reverse",
                    ),
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  SingleChildScrollView(
                    child: Container(
                      color: Colors.white70,
                      child: Column(children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CompareTeamsPage()),
                            );
                          },
                          child: Container(
                            // decoration: BoxDecoration(
                            //     border: Border.all(),
                            //     borderRadius: BorderRadius.all(
                            //         Radius.circular(deviceWidth * 1))),
                            width: deviceWidth * 100,
                            color: Colors.black12,
                            child: Padding(
                              padding: EdgeInsets.all(deviceWidth * 5),
                              child: Text(
                                "Compare Team",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: deviceWidth * 5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: deviceHeight * 3,
                        ),
                        Padding(
                          padding: EdgeInsets.all(deviceWidth * 5),
                          child: Card(
                            shadowColor: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.all(deviceWidth * 5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                            width: deviceWidth * 25,
                                            child: const Text(
                                              "Investment",
                                              textAlign: TextAlign.start,
                                            )),
                                        Container(
                                          width: deviceWidth * 25,
                                          child: Text(
                                            "₹5199",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: deviceWidth * 6,
                                                color: Colors.red[800]),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                            width: deviceWidth * 25,
                                            child: const Text(
                                              "Winnings",
                                              textAlign: TextAlign.center,
                                            )),
                                        Container(
                                          width: deviceWidth * 25,
                                          child: Text(
                                            "₹0",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: deviceWidth * 6,
                                                color: Colors.yellow[800]),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                            width: deviceWidth * 25,
                                            child: const Text(
                                              "Profit",
                                              textAlign: TextAlign.end,
                                            )),
                                        Container(
                                          width: deviceWidth * 25,
                                          child: Text(
                                            "₹-5199",
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                                fontSize: deviceWidth * 6,
                                                color: Colors.red[800]),
                                          ),
                                        )
                                      ],
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: deviceHeight * 2,
                        ),
                        Padding(
                          padding: EdgeInsets.all(deviceWidth * 5),
                          child: Card(
                            child: Column(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.emoji_events_outlined,
                                    color: Colors.yellow[800],
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(color: Colors.yellow[800]),
                                  ),
                                  const Text("Winners")
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(deviceWidth * 5),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: deviceWidth * 25,
                                            child: Text(
                                              "₹10000",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: deviceWidth * 6,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              width: deviceWidth * 25,
                                              child: const Text(
                                                "Prize Pool",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black38),
                                              )),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: deviceWidth * 25,
                                            child: Text(
                                              "2",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: deviceWidth * 6,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: deviceWidth * 25,
                                            child: const Text("Spot",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black38)),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: deviceWidth * 25,
                                            child: Text(
                                              "₹5199",
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                fontSize: deviceWidth * 6,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: deviceWidth * 25,
                                            child: const Text("Entry Fee",
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                    color: Colors.black38)),
                                          )
                                        ],
                                      ),
                                    ]),
                              ),
                              Divider(
                                height: deviceWidth * 2,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: deviceWidth * 5,
                                    vertical: deviceWidth * 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width: deviceWidth * 25,
                                        child: const Text(
                                          "RadhaKrishna123(T1)",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                        )),
                                    Container(
                                        width: deviceWidth * 25,
                                        child: const Text(
                                          "536.50",
                                          textAlign: TextAlign.center,
                                        )),
                                    Container(
                                        width: deviceWidth * 25,
                                        child: const Text(
                                          "#2",
                                          textAlign: TextAlign.end,
                                        ))
                                  ],
                                ),
                              )
                            ]),
                          ),
                        )
                      ]),
                    ),
                  ),
                  Container(
                    color: Colors.white70,
                    child: const Center(
                      child: Text(
                        'Batting',
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white70,
                    child: const Center(
                      child: Text(
                        'Bowling',
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white70,
                    child: const Center(
                      child: Text(
                        'Reverse',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
