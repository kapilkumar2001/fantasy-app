import 'dart:convert';

import 'package:create11/constants/strings.dart';
import 'package:create11/views/screens/home/drawer.dart';
import 'package:create11/views/widgets/cards/mymatches_card.dart';
import 'package:create11/views/screens/home/profile.dart';
import 'package:create11/views/screens/home/promo_card.dart';
import 'package:create11/views/screens/home/upcomingmatches_card.dart';
import 'package:create11/views/screens/my_contest/mycontest.dart';
import 'package:flutter/material.dart';

import '../../../services/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List myMatches = [];
  List? upcomingMatchesList;

  @override
  void initState() {
    getMatches();
    super.initState();
  }

  Future getMatches() async {
    upcomingMatchesList = (await Data().getUpcomingMatches()).toList();
    // TODO: change usedID with real
    // this is just for testing purpose , id being used is userid - 8
    myMatches = (await Data().getUsersContests("8")).toList();
    setState(() {});
    print(upcomingMatchesList!.length);
  }

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(Strings.appName),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: deviceHeight * 3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: deviceWidth * 50,
                  child: Text(
                    Strings.myMatches,
                    style: TextStyle(
                      fontSize: deviceHeight * 2.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyContestPage()),
                    );
                  },
                  child: Row(children: [
                    Container(
                      width: deviceWidth * 30,
                      child: Text(Strings.viewAll,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: deviceHeight * 2.3,
                              color: Colors.black)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: deviceHeight * 1.8,
                    ),
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight * 2,
          ),
          myMatches.length == 0
              ? Container(
                  width: deviceWidth * 100,
                  child: Padding(
                    padding: EdgeInsets.all(deviceWidth * 5),
                    child: Text(
                      "You have not joined any contest!",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: deviceWidth * 4),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < myMatches.length; i++)
                        MyMatchesCard(
                          isMatchCompleted: false,
                          isMatchLive: true,
                          contestDetails: myMatches[i]
                        ),
                    ],
                  ),
                ),
          SizedBox(
            height: deviceHeight * 2,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 4),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: deviceWidth * 1),
                    child: const PromoCard(),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight * 2,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount:
                  upcomingMatchesList == null ? 0 : upcomingMatchesList!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: deviceWidth * 3,
                      right: deviceWidth * 3,
                      top: deviceHeight * 1),
                  child: UpcomingMatchesCard(upcomingMatchesList![index]),
                );
              }),
          SizedBox(
            height: deviceHeight * 2,
          ),
        ]),
      ),
    );
  }
}
