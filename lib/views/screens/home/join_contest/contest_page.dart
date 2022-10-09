import 'package:create11/views/screens/home/contest_card.dart';
import 'package:create11/views/screens/home/join_contest/create_team_page.dart';
import 'package:flutter/material.dart';

class ContestPage extends StatefulWidget {
  var contestDetails, matchDetails;
  ContestPage(this.contestDetails, this.matchDetails);

  @override
  State<ContestPage> createState() => _ContestPageState();
}

class _ContestPageState extends State<ContestPage> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              widget.matchDetails['short_name'],
              style: TextStyle(fontSize: deviceWidth * 5),
            ),
            Text(
              widget.matchDetails['start_date'],
              style: TextStyle(fontSize: deviceWidth * 4),
            )
          ]),
        ),
        body: Column(
          children: [
            Column(children: [
              SizedBox(
                height: deviceHeight * 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: deviceWidth * 25,
                            child: Text(
                              (int.parse(widget.contestDetails['contest_limit'])* int.parse(widget.contestDetails['entry_amount'])).toString(),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: deviceWidth * 5,
                              ),
                            ),
                          ),
                          Container(
                              width: deviceWidth * 25,
                              child: const Text(
                                "Prize Pool",
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.black38),
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: deviceWidth * 25,
                            child: Text(
                              widget.contestDetails['entry_amount'],
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: deviceWidth * 5,
                              ),
                            ),
                          ),
                          Container(
                            width: deviceWidth * 25,
                            child: const Text("Entry Fee",
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.black38)),
                          )
                        ],
                      ),
                    ]),
              ),
              SliderTheme(
                child: Slider(
                  activeColor: Colors.red[900],
                  inactiveColor: Colors.black38,
                  value: 1489,
                  max: 4999,
                  divisions: 4999,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.contestDetails['contest_limit']} Spots Left",
                      style: TextStyle(color: Colors.red[900]),
                    ),
                    Text("${widget.contestDetails['contest_limit']} Spots",
                        style: TextStyle(color: Colors.black38))
                  ],
                ),
              ),
              Divider(
                height: deviceWidth * 2,
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //       horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Container(
              //           width: deviceWidth * 25,
              //           child: const Text(
              //             "₹30000",
              //             overflow: TextOverflow.ellipsis,
              //             textAlign: TextAlign.start,
              //           )),
              //       Container(
              //           width: deviceWidth * 25,
              //           child: const Text(
              //             "1500 Team Win",
              //             textAlign: TextAlign.center,
              //           )),
              //     ],
              //   ),
              // )
            ]),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreateTeamPage(widget.contestDetails, widget.matchDetails)),
                );
              },
              child: Container(
                color: Colors.green,
                width: deviceWidth * 100,
                child: Padding(
                  padding: EdgeInsets.all(deviceWidth * 5),
                  child: Text(
                    "Join Contest Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontSize: deviceWidth * 5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight * 6.5,
              child: AppBar(
                backgroundColor: Colors.white,
                bottom: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.black45,
                  labelStyle: TextStyle(fontSize: deviceWidth * 5),
                  isScrollable: true,
                  tabs: const [
                    Tab(
                      text: "Winning Breakup",
                    ),
                    Tab(
                      text: "Leaderboard",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(deviceWidth * 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("RANK"), Text("PRIZE")],
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
                        child: ListTile(
                          leading: Text("1",
                              style: TextStyle(fontSize: deviceHeight * 2)),
                          trailing: Text("₹30000",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
                        child: ListTile(
                          leading: Text("2",
                              style: TextStyle(fontSize: deviceHeight * 2)),
                          trailing: Text("₹10000",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
                        child: ListTile(
                          leading: Text("3",
                              style: TextStyle(fontSize: deviceHeight * 2)),
                          trailing: Text("₹2000",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
                        child: ListTile(
                          leading: Text("4-10",
                              style: TextStyle(fontSize: deviceHeight * 2)),
                          trailing: Text("₹500",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
                        child: ListTile(
                          leading: Text("11-20",
                              style: TextStyle(fontSize: deviceHeight * 2)),
                          trailing: Text("₹200",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
                        child: ListTile(
                          leading: Text("21-50",
                              style: TextStyle(fontSize: deviceHeight * 2)),
                          trailing: Text("₹100",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
                        child: ListTile(
                          leading: Text("51-100",
                              style: TextStyle(fontSize: deviceHeight * 2)),
                          trailing: Text("₹50",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
                        child: ListTile(
                          leading: Text("101-1000",
                              style: TextStyle(fontSize: deviceHeight * 2)),
                          trailing: Text("₹40",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
                        child: ListTile(
                          leading: Text("1001-2500",
                              style: TextStyle(fontSize: deviceHeight * 2)),
                          trailing: Text("₹30",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                    ]),
                  ),
                  SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(deviceWidth * 4),
                        child: Text(
                          "All Teams(284)",
                          style: TextStyle(fontSize: deviceWidth * 4),
                        ),
                      ),
                      Divider(
                        height: deviceHeight * 0.5,
                        color: Colors.black38,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 25,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  EdgeInsets.only(bottom: deviceHeight * 0.5),
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: deviceWidth * 5,
                                  backgroundColor: Colors.red,
                                  child: Icon(Icons.person_outline),
                                ),
                                title: Text("Prakash234",
                                    style:
                                        TextStyle(fontSize: deviceHeight * 2)),
                              ),
                            );
                          }),
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
