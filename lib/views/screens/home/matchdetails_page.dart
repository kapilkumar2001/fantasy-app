import 'package:create11/views/screens/home/home_page.dart';
import 'package:create11/views/screens/home/mymatches_card.dart';
import 'package:flutter/material.dart';

class MatchDetailsPage extends StatefulWidget {
  const MatchDetailsPage({Key? key}) : super(key: key);

  @override
  State<MatchDetailsPage> createState() => _MatchDetailsPageState();
}

class _MatchDetailsPageState extends State<MatchDetailsPage> with TickerProviderStateMixin {

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
              height: deviceHeight * 15,
              color: Colors.red[900],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ZIM",
                            style: TextStyle(
                                color: Colors.white, fontSize: deviceHeight * 2),
                          ),
                          Text("135/8 (20)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: deviceHeight * 2.3))
                        ],
                      ),
                      Row(children: [
                        CircleAvatar(
                          radius: deviceHeight * 0.7,
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(
                          width: deviceWidth * 1,
                        ),
                        Text(
                          "Completed",
                          style: TextStyle(
                              color: Colors.white, fontSize: deviceHeight * 1.5),
                        ),
                      ]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "BAN",
                            style: TextStyle(
                                color: Colors.white, fontSize: deviceHeight * 2),
                          ),
                          Text("136/3 (17.3)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: deviceHeight * 2.3))
                        ],
                      )
                    ],
                  ),
                  Text(
                    "Bangladesh won by 7 wickets",
                    style: TextStyle(
                        color: Colors.white, fontSize: deviceHeight * 2),
                  )
                ],
              ),
            ),
    
            SizedBox(
                height: deviceHeight*6.5,
                child: AppBar(
                  backgroundColor: Colors.white,
                  bottom: TabBar(
                    labelColor: Colors.red[900],
                    indicatorColor: Colors.red[900],
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.black45,
                    labelStyle: TextStyle(
                      fontSize: deviceWidth*5
                    ),
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
                    Container(
                       color: Colors.white70,
                      child: const Center(
                        child: Text(
                          'full Match',
                        ),
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
