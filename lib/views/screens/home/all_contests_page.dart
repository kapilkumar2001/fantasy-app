import 'dart:convert';

import 'package:create11/services/data.dart';
import 'package:create11/views/screens/home/contest_card.dart';
import 'package:create11/views/screens/home/create_contest.dart';
import 'package:flutter/material.dart';

class AllContestsPage extends StatefulWidget {
  var matchDetails;
  
  AllContestsPage(this.matchDetails);

  @override
  State<AllContestsPage> createState() => _AllContestsPageState();
}

class _AllContestsPageState extends State<AllContestsPage>
    with TickerProviderStateMixin {

  List contestsList = [];
  bool isLoading = true;

  @override
  void initState()  {
    getContests();
    super.initState();
  }

  Future getContests() async {
    contestsList = (await Data().getContests(widget.matchDetails['id'])).toList();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    var teamA = jsonDecode(widget.matchDetails['teams'])['a'];
    var teamB = jsonDecode(widget.matchDetails['teams'])['b'];

    return isLoading? Center(child: CircularProgressIndicator(color: Colors.redAccent,)) : Scaffold(
      appBar: AppBar(
        title: Text(widget.matchDetails['short_name']),
        backgroundColor: Colors.red[900],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                                  teamA['code'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceHeight * 2),
                                ),
                                widget.matchDetails['status'] != 'not_started'
                                    ? Text("135/8 (20)",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: deviceHeight * 2.3))
                                    : Container()
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
                                widget.matchDetails['status'],
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
                                  teamB['code'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceHeight * 2),
                                ),
                                widget.matchDetails['status'] != 'not_started'
                                    ? Text("136/3 (17.3)",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: deviceHeight * 2.3))
                                    : Container()
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    widget.matchDetails['status'] == 'not_started'
                        ? Container(
                            width: deviceWidth * 90,
                            child: Center(
                              child: Text(
                                "Match not started yet",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviceHeight * 2),
                              ),
                            ))
                        : Container(
                            width: deviceWidth * 90,
                            child: Center(
                              child: Text(
                                "Bangladesh won by 7 wickets",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviceHeight * 2),
                              ),
                            ),
                          )
                  ],
                ),
              ),
            ),
      
            Padding(
              padding: EdgeInsets.only(
                  right: deviceWidth * 5,
                  left: deviceWidth * 5,
                  top: deviceWidth * 2,
                  bottom: deviceWidth * 1),
              child: ListTile(
                leading: CircleAvatar(
                  radius: deviceWidth * 5,
                  backgroundColor: Colors.black87,
                  backgroundImage: const AssetImage("assets/images/ind.jpg"),
                ),
                title: const Text("Create11 Specials"),
                subtitle: const Text("Low entry Mega Winnings!!"),
              ),
            ),
            contestsList.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: contestsList.length,
                    itemBuilder: (context, index) {
                      return ContestCard(contestsList[index]);
                    })
                : Container(
                    child: Padding(
                      padding: EdgeInsets.all(deviceWidth * 5),
                      child: Text(
                        "Oops! No Contest Available!!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: deviceWidth * 4),
                      ),
                    ),
                  )
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
            //           text: "Full Match",
            //         ),
            //         Tab(
            //           text: "Batting",
            //         ),
            //         Tab(
            //           text: "Bowling",
            //         ),
            //         Tab(
            //           text: "Reverse",
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Expanded(
            //   child: TabBarView(
            //     children: [
            //       // first tab bar view widget
            //       SingleChildScrollView(
            //         child: Container(
            //           child: Column(children: [
            //             Padding(
            //               padding: EdgeInsets.only(
            //                   right: deviceWidth * 5,
            //                   left: deviceWidth * 5,
            //                   top: deviceWidth * 2,
            //                   bottom: deviceWidth * 1),
            //               child: ListTile(
            //                 leading: CircleAvatar(
            //                   radius: deviceWidth * 5,
            //                   backgroundColor: Colors.black87,
            //                   backgroundImage:
            //                       const AssetImage("assets/images/sl.jpg"),
            //                 ),
            //                 title: Text("Mega GL"),
            //                 subtitle: Text("Low entry Mega Winnings!!"),
            //               ),
            //             ),
            //             ListView.builder(
            //                 shrinkWrap: true,
            //                 physics: const NeverScrollableScrollPhysics(),
            //                 itemCount: 2,
            //                 itemBuilder: (context, index) {
            //                   return ContestCard();
            //                 }),
            //             // Padding(
            //             //   padding: EdgeInsets.only(
            //             //       right: deviceWidth * 5,
            //             //       left: deviceWidth * 5,
            //             //       top: deviceWidth * 2,
            //             //       bottom: deviceWidth * 1),
            //             //   child: ListTile(
            //             //     leading: CircleAvatar(
            //             //       radius: deviceWidth * 5,
            //             //       backgroundColor: Colors.black87,
            //             //       backgroundImage:
            //             //           const AssetImage("assets/images/sl.jpg"),
            //             //     ),
            //             //     title: Text("Create11 Giveaway"),
            //             //     subtitle: Text("Loot!!"),
            //             //   ),
            //             // ),
            //             // ListView.builder(
            //             //     shrinkWrap: true,
            //             //     physics: const NeverScrollableScrollPhysics(),
            //             //     itemCount: 2,
            //             //     itemBuilder: (context, index) {
            //             //       return ContestCard();
            //             //     }),
            //             // Padding(
            //             //   padding: EdgeInsets.only(
            //             //       right: deviceWidth * 5,
            //             //       left: deviceWidth * 5,
            //             //       top: deviceWidth * 2,
            //             //       bottom: deviceWidth * 1),
            //             //   child: ListTile(
            //             //     leading: CircleAvatar(
            //             //       radius: deviceWidth * 5,
            //             //       backgroundColor: Colors.black87,
            //             //       backgroundImage:
            //             //           const AssetImage("assets/images/sl.jpg"),
            //             //     ),
            //             //     title: Text("Winner takes all"),
            //             //     subtitle: Text("Everything To Play For"),
            //             //   ),
            //             // ),
            //             // ListView.builder(
            //             //     shrinkWrap: true,
            //             //     physics: const NeverScrollableScrollPhysics(),
            //             //     itemCount: 4,
            //             //     itemBuilder: (context, index) {
            //             //       return ContestCard();
            //             //     }),
            //           ]),
            //         ),
            //       ),
            //       SingleChildScrollView(
            //         child: Container(
            //           child: Column(children: [
            //             Padding(
            //               padding: EdgeInsets.only(
            //                   right: deviceWidth * 5,
            //                   left: deviceWidth * 5,
            //                   top: deviceWidth * 2,
            //                   bottom: deviceWidth * 1),
            //               child: ListTile(
            //                 leading: CircleAvatar(
            //                   radius: deviceWidth * 5,
            //                   backgroundColor: Colors.black87,
            //                   backgroundImage:
            //                       const AssetImage("assets/images/sl.jpg"),
            //                 ),
            //                 title: Text("Mega GL"),
            //                 subtitle: Text("Low entry Mega Winnings!!"),
            //               ),
            //             ),
            //             ListView.builder(
            //                 shrinkWrap: true,
            //                 physics: const NeverScrollableScrollPhysics(),
            //                 itemCount: 2,
            //                 itemBuilder: (context, index) {
            //                   return ContestCard();
            //                 }),
            //             // Padding(
            //             //   padding: EdgeInsets.only(
            //             //       right: deviceWidth * 5,
            //             //       left: deviceWidth * 5,
            //             //       top: deviceWidth * 2,
            //             //       bottom: deviceWidth * 1),
            //             //   child: ListTile(
            //             //     leading: CircleAvatar(
            //             //       radius: deviceWidth * 5,
            //             //       backgroundColor: Colors.black87,
            //             //       backgroundImage:
            //             //           const AssetImage("assets/images/sl.jpg"),
            //             //     ),
            //             //     title: Text("Create11 Giveaway"),
            //             //     subtitle: Text("Loot!!"),
            //             //   ),
            //             // ),
            //             // ListView.builder(
            //             //     shrinkWrap: true,
            //             //     physics: const NeverScrollableScrollPhysics(),
            //             //     itemCount: 2,
            //             //     itemBuilder: (context, index) {
            //             //       return ContestCard();
            //             //     }),
            //             // Padding(
            //             //   padding: EdgeInsets.only(
            //             //       right: deviceWidth * 5,
            //             //       left: deviceWidth * 5,
            //             //       top: deviceWidth * 2,
            //             //       bottom: deviceWidth * 1),
            //             //   child: ListTile(
            //             //     leading: CircleAvatar(
            //             //       radius: deviceWidth * 5,
            //             //       backgroundColor: Colors.black87,
            //             //       backgroundImage:
            //             //           const AssetImage("assets/images/sl.jpg"),
            //             //     ),
            //             //     title: Text("Winner takes all"),
            //             //     subtitle: Text("Everything To Play For"),
            //             //   ),
            //             // ),
            //             // ListView.builder(
            //             //     shrinkWrap: true,
            //             //     physics: const NeverScrollableScrollPhysics(),
            //             //     itemCount: 4,
            //             //     itemBuilder: (context, index) {
            //             //       return ContestCard();
            //             //     }),
            //           ]),
            //         ),
            //       ),
            //       SingleChildScrollView(
            //         child: Container(
            //           child: Column(children: [
            //             Padding(
            //               padding: EdgeInsets.only(
            //                   right: deviceWidth * 5,
            //                   left: deviceWidth * 5,
            //                   top: deviceWidth * 2,
            //                   bottom: deviceWidth * 1),
            //               child: ListTile(
            //                 leading: CircleAvatar(
            //                   radius: deviceWidth * 5,
            //                   backgroundColor: Colors.black87,
            //                   backgroundImage:
            //                       const AssetImage("assets/images/sl.jpg"),
            //                 ),
            //                 title: Text("Mega GL"),
            //                 subtitle: Text("Low entry Mega Winnings!!"),
            //               ),
            //             ),
            //             ListView.builder(
            //                 shrinkWrap: true,
            //                 physics: const NeverScrollableScrollPhysics(),
            //                 itemCount: 2,
            //                 itemBuilder: (context, index) {
            //                   return ContestCard();
            //                 }),
            //             // Padding(
            //             //   padding: EdgeInsets.only(
            //             //       right: deviceWidth * 5,
            //             //       left: deviceWidth * 5,
            //             //       top: deviceWidth * 2,
            //             //       bottom: deviceWidth * 1),
            //             //   child: ListTile(
            //             //     leading: CircleAvatar(
            //             //       radius: deviceWidth * 5,
            //             //       backgroundColor: Colors.black87,
            //             //       backgroundImage:
            //             //           const AssetImage("assets/images/sl.jpg"),
            //             //     ),
            //             //     title: Text("Create11 Giveaway"),
            //             //     subtitle: Text("Loot!!"),
            //             //   ),
            //             // ),
            //             // ListView.builder(
            //             //     shrinkWrap: true,
            //             //     physics: const NeverScrollableScrollPhysics(),
            //             //     itemCount: 2,
            //             //     itemBuilder: (context, index) {
            //             //       return ContestCard();
            //             //     }),
            //             // Padding(
            //             //   padding: EdgeInsets.only(
            //             //       right: deviceWidth * 5,
            //             //       left: deviceWidth * 5,
            //             //       top: deviceWidth * 2,
            //             //       bottom: deviceWidth * 1),
            //             //   child: ListTile(
            //             //     leading: CircleAvatar(
            //             //       radius: deviceWidth * 5,
            //             //       backgroundColor: Colors.black87,
            //             //       backgroundImage:
            //             //           const AssetImage("assets/images/sl.jpg"),
            //             //     ),
            //             //     title: Text("Winner takes all"),
            //             //     subtitle: Text("Everything To Play For"),
            //             //   ),
            //             // ),
            //             // ListView.builder(
            //             //     shrinkWrap: true,
            //             //     physics: const NeverScrollableScrollPhysics(),
            //             //     itemCount: 4,
            //             //     itemBuilder: (context, index) {
            //             //       return ContestCard();
            //             //     }),
            //           ]),
            //         ),
            //       ),
            //       SingleChildScrollView(
            //         child: Container(
            //           child: Column(children: [
            //             Padding(
            //               padding: EdgeInsets.only(
            //                   right: deviceWidth * 5,
            //                   left: deviceWidth * 5,
            //                   top: deviceWidth * 2,
            //                   bottom: deviceWidth * 1),
            //               child: ListTile(
            //                 leading: CircleAvatar(
            //                   radius: deviceWidth * 5,
            //                   backgroundColor: Colors.black87,
            //                   backgroundImage:
            //                       const AssetImage("assets/images/sl.jpg"),
            //                 ),
            //                 title: Text("Mega GL"),
            //                 subtitle: Text("Low entry Mega Winnings!!"),
            //               ),
            //             ),
            //             ListView.builder(
            //                 shrinkWrap: true,
            //                 physics: const NeverScrollableScrollPhysics(),
            //                 itemCount: 2,
            //                 itemBuilder: (context, index) {
            //                   return ContestCard();
            //                 }),
            //             // Padding(
            //             //   padding: EdgeInsets.only(
            //             //       right: deviceWidth * 5,
            //             //       left: deviceWidth * 5,
            //             //       top: deviceWidth * 2,
            //             //       bottom: deviceWidth * 1),
            //             //   child: ListTile(
            //             //     leading: CircleAvatar(
            //             //       radius: deviceWidth * 5,
            //             //       backgroundColor: Colors.black87,
            //             //       backgroundImage:
            //             //           const AssetImage("assets/images/sl.jpg"),
            //             //     ),
            //             //     title: Text("Create11 Giveaway"),
            //             //     subtitle: Text("Loot!!"),
            //             //   ),
            //             // ),
            //             // ListView.builder(
            //             //     shrinkWrap: true,
            //             //     physics: const NeverScrollableScrollPhysics(),
            //             //     itemCount: 2,
            //             //     itemBuilder: (context, index) {
            //             //       return ContestCard();
            //             //     }),
            //             // Padding(
            //             //   padding: EdgeInsets.only(
            //             //       right: deviceWidth * 5,
            //             //       left: deviceWidth * 5,
            //             //       top: deviceWidth * 2,
            //             //       bottom: deviceWidth * 1),
            //             //   child: ListTile(
            //             //     leading: CircleAvatar(
            //             //       radius: deviceWidth * 5,
            //             //       backgroundColor: Colors.black87,
            //             //       backgroundImage:
            //             //           const AssetImage("assets/images/sl.jpg"),
            //             //     ),
            //             //     title: Text("Winner takes all"),
            //             //     subtitle: Text("Everything To Play For"),
            //             //   ),
            //             // ),
            //             // ListView.builder(
            //             //     shrinkWrap: true,
            //             //     physics: const NeverScrollableScrollPhysics(),
            //             //     itemCount: 4,
            //             //     itemBuilder: (context, index) {
            //             //       return ContestCard();
            //             //     }),
            //           ]),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.red[900],
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CreateContest(widget.matchDetails['id'])),
          ).then((value) { setState(() {

          });});
        },
      ),
    );
  }
}
