import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Account"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(deviceWidth * 5),
            child: Card(
              shadowColor: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(deviceWidth * 3),
              ),
              child: Container(
                width: deviceWidth * 90,
                height: deviceHeight * 47,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: deviceHeight * 2,
                    ),
                    Text(
                      "Total Balance",
                      style: TextStyle(fontSize: deviceHeight * 2.2),
                    ),
                    Text(
                      "₹5204.87",
                      style: TextStyle(fontSize: deviceHeight * 2.2),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Add Cash"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color?>(
                              Colors.green[700])),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 5),
                      child: Divider(
                        height: deviceHeight * 1.5,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 5,
                          vertical: deviceHeight * 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Deposited",
                                  style:
                                      TextStyle(fontSize: deviceHeight * 2.2)),
                              Text(
                                "₹5204.87",
                                style: TextStyle(fontSize: deviceHeight * 2.2),
                              ),
                            ],
                          ),
                          Icon(Icons.info_outline)
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 5),
                      child: Divider(
                        height: deviceHeight * 1.5,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 5,
                          vertical: deviceHeight * 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Winnings",
                                  style:
                                      TextStyle(fontSize: deviceHeight * 2.2)),
                              Text(
                                "₹3.87",
                                style: TextStyle(fontSize: deviceHeight * 2.2),
                              ),
                            ],
                          ),
                          Icon(Icons.info_outline)
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Withdraw"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color?>(
                              Colors.red[900])),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 5),
                      child: Divider(
                        height: deviceHeight * 1.5,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 5,
                          vertical: deviceHeight * 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Cash Bonus",
                                  style:
                                      TextStyle(fontSize: deviceHeight * 2.2)),
                              Text(
                                "₹0.00",
                                style: TextStyle(fontSize: deviceHeight * 2.2),
                              ),
                            ],
                          ),
                          Icon(Icons.info_outline)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 1,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                "Playing History",
                style: TextStyle(fontSize: deviceHeight * 2.5),
              ),
            ]),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Padding(
              padding:
                  EdgeInsets.only(left: deviceWidth * 5, top: deviceWidth * 5),
              child: Card(
                shadowColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(deviceWidth * 3),
                ),
                child: Container(
                  width: deviceWidth * 42.5,
                  height: deviceHeight * 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.emoji_events_rounded,
                        size: deviceHeight * 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1139",
                            style: TextStyle(fontSize: deviceHeight * 2.5),
                          ),
                          Text("Match Played",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2.0,
                                  color: Colors.black45)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: deviceWidth * 5, top: deviceWidth * 5),
               child: Card(
                shadowColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(deviceWidth * 3),
                ),
                child: Container(
                  width: deviceWidth * 42.5,
                  height: deviceHeight * 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.emoji_events_rounded,
                        size: deviceHeight * 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1993",
                            style: TextStyle(fontSize: deviceHeight * 2.5),
                          ),
                          Text("Contests Joined",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2.0,
                                  color: Colors.black45)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Padding(
              padding:
                  EdgeInsets.only(left: deviceWidth * 5, top: deviceWidth * 5),
              child: Card(
                shadowColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(deviceWidth * 3),
                ),
                child: Container(
                  width: deviceWidth * 42.5,
                  height: deviceHeight * 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.emoji_events_rounded,
                        size: deviceHeight * 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1273",
                            style: TextStyle(fontSize: deviceHeight * 2.5),
                          ),
                          Text("Contests Won",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2.0,
                                  color: Colors.black45)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: deviceWidth * 5, top: deviceWidth * 5),
               child: Card(
                shadowColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(deviceWidth * 3),
                ),
                child: Container(
                  width: deviceWidth * 42.5,
                  height: deviceHeight * 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.emoji_events_rounded,
                        size: deviceHeight * 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₹345267.01",
                            style: TextStyle(fontSize: deviceHeight * 2.5),
                          ),
                          Text("Total Winnings",
                              style: TextStyle(
                                  fontSize: deviceHeight * 2.0,
                                  color: Colors.black45)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
