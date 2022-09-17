import 'package:create11/constants/strings.dart';
import 'package:create11/views/screens/home/mymatches_card.dart';
import 'package:create11/views/screens/home/upcomingmatches_card.dart';
import 'package:flutter/material.dart';

class MyContestPage extends StatefulWidget {
  const MyContestPage({Key? key}) : super(key: key);

  @override
  State<MyContestPage> createState() => _MyContestPageState();
}

class _MyContestPageState extends State<MyContestPage> {
  List upcomingContests = [];
  List liveContests = [];
  List completedContests = [];

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text(Strings.myContests),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined)),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white70,
            tabs: <Tab>[
              Tab(
                child: Text("Upcoming"),
              ),
              Tab(
                child: Text("Live"),
              ),
              Tab(
                child: Text("Completed"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            upcomingContests.length == 0
                ? Center(
                    child: Container(
                      width: deviceWidth * 100,
                      child: Padding(
                        padding: EdgeInsets.all(deviceWidth * 5),
                        child: const Text(
                          "You have not joined any contest!",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: deviceWidth * 3,
                            right: deviceWidth * 3,
                            top: deviceHeight * 1),
                        child: MyMatchesCard(
                            isMatchLive: false, isMatchCompleted: false),
                      );
                    }),
            liveContests.length == 0
                ? Center(
                    child: Container(
                      width: deviceWidth * 100,
                      child: Padding(
                        padding: EdgeInsets.all(deviceWidth * 5),
                        child: const Text(
                          "You have no live contest joined!",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: deviceWidth * 3,
                            right: deviceWidth * 3,
                            top: deviceHeight * 1),
                        child: MyMatchesCard(
                            isMatchLive: true, isMatchCompleted: false),
                      );
                    }),
            completedContests.length == 0
                ? Center(
                    child: Container(
                      width: deviceWidth * 100,
                      child: Padding(
                        padding: EdgeInsets.all(deviceWidth * 5),
                        child: const Text(
                          "You haven't joined any contest",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: deviceWidth * 3,
                            right: deviceWidth * 3,
                            top: deviceHeight * 1),
                        child: MyMatchesCard(
                            isMatchLive: false, isMatchCompleted: true),
                      );
                    }),
          ],
        ),
      ),
    );
  }
}
