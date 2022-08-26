import 'package:create11/constants/strings.dart';
import 'package:create11/views/screens/home/mymatches_card.dart';
import 'package:create11/views/screens/home/promo_card.dart';
import 'package:create11/views/screens/home/upcomingmatches_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
            child: Row(
              children: [
                Row(children: [
                  CircleAvatar(
                  radius: deviceWidth*10,
                  backgroundImage: const AssetImage("assets/images/aus.jpg"),
                ),
                SizedBox(width: deviceWidth*1,),
                Column(
                  children: const [
                    Text("RadhaKrishna121"),
                    Text("Level 53")
                  ],
                ),
                ],),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
            decoration: BoxDecoration(),
          ),
          ListTile(
            title: Text('Item1'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Item2'),
            onTap: () {},
          ),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,

        centerTitle: true,
        title: const Text(Strings.appName),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
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
                Text(
                  Strings.myMatches,
                  style: TextStyle(
                    fontSize: deviceHeight * 2.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Text(Strings.viewAll,
                      style: TextStyle(
                          fontSize: deviceHeight * 2.3, color: Colors.black)),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: deviceHeight * 1.8,
                  ),
                ]),
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
                const MyMatchesCard(),
                SizedBox(width: deviceWidth * 1),
                const MyMatchesCard(),
                SizedBox(width: deviceWidth * 1),
                const MyMatchesCard(),
                SizedBox(width: deviceWidth * 1),
                const MyMatchesCard()
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
                const PromoCard(),
                SizedBox(width: deviceWidth * 3),
                const PromoCard(),
                SizedBox(width: deviceWidth * 3),
                const PromoCard(),
                SizedBox(width: deviceWidth * 3),
                const PromoCard()
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight * 2,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 4),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const UpcomingMatchesCard(),
                SizedBox(height: deviceHeight * 1),
                const UpcomingMatchesCard(),
                SizedBox(height: deviceHeight * 1),
                const UpcomingMatchesCard(),
                SizedBox(height: deviceHeight * 1),
                const UpcomingMatchesCard(),
                SizedBox(height: deviceHeight * 1),
                const UpcomingMatchesCard()
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight * 2,
          ),
        ]),
      ),
    );
  }
}
