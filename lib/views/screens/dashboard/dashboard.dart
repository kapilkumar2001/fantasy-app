import 'package:create11/constants/strings.dart';
import 'package:create11/themes/app_dimensions.dart';
import 'package:create11/utils/size_config.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Padding(
          padding: EdgeInsets.only(left: deviceWidth * 5),
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text(Strings.appName),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: deviceHeight * 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.myMatches,
                style: TextStyle(
                  fontSize: deviceHeight * 2.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Text(Strings.viewAll,
                    style: TextStyle(
                        fontSize: deviceHeight * 2.3, color: Colors.black)),
                        Icon(Icons.arrow_forward_ios, size: deviceHeight*1.8,),
                ]
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
              Container(
                width: deviceWidth * 90,
                height: deviceHeight * 20.1,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(deviceWidth * 5)),
                child: Column(children: [
                  SizedBox(
                    height: deviceHeight * 1.5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: deviceWidth * 5,
                      ),
                      Text(
                        'Dresden T10 Cricket Series',
                        style: TextStyle(
                            fontSize: deviceWidth * 5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  Divider(
                    height: deviceHeight * 1.5,
                    color: Colors.black12,
                  ),
                  SizedBox(
                    height: deviceHeight * 1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: deviceWidth * 4),
                    child: SizedBox(
                      child: ListTile(
                        leading: Column(
                          children: [
                            Text(
                              'Team 1',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: deviceWidth * 4.3,
                              ),
                              textAlign: TextAlign.start,
                            ),
                             SizedBox(
                      height: deviceHeight * 0.2,
                  ),
                            CircleAvatar(
                              radius: deviceWidth* 4.8,
                              backgroundColor: Colors.black87,
                            ),
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              'Team 2',
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: deviceWidth * 4.3),
                            ),
                            SizedBox(
                      height: deviceHeight * 0.2,
                  ),
                            CircleAvatar(
                              radius: deviceWidth* 4.8,
                              backgroundColor: Colors.black87,
                            ),
                          ],
                        ),
                        title: Center(
                          child: Text(
                            "40m 50s",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: deviceWidth * 5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 1.5,
                  ),
                  Divider(
                    height: deviceHeight * 1.5,
                    color: Colors.black12,
                  ),
                  SizedBox(
                    height: deviceHeight * 0.5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: deviceWidth * 5,
                      ),
                      Text(
                        '1 Team',
                        style: TextStyle(
                            fontSize: deviceWidth * 5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        width: deviceWidth * 5,
                      ),
                      Text(
                        '1 Contests',
                        style: TextStyle(
                            fontSize: deviceWidth * 5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight * 1.5,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
