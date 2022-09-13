import 'package:create11/views/screens/home/profile.dart';
import 'package:create11/views/screens/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserProfilePage()),
                        );
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: deviceWidth * 8,
                            backgroundImage:
                                const AssetImage("assets/images/aus.jpg"),
                          ),
                          SizedBox(
                            width: deviceWidth * 1,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: deviceWidth * 46,
                                child: Text(
                                  "RadhaKrishna121",
                                  style: TextStyle(fontSize: deviceWidth * 5),
                                ),
                              ),
                              Container(
                                width: deviceWidth * 46,
                                child: Text(
                                  "Level 53",
                                  style: TextStyle(fontSize: deviceWidth * 4),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: deviceWidth * 40,
                    child: Text("₹5204.87",
                        style: TextStyle(fontSize: deviceWidth * 7)),
                  ),
                  Container(
                    width: deviceWidth * 40,
                    child: Text("Total Balance",
                        style: TextStyle(fontSize: deviceWidth * 3)),
                  )
                ],
              ),
              Container(
                width: deviceWidth * 25,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.green.shade700)),
                    onPressed: () {},
                    child: Center(child: const Text("Add Cash"))),
              ),
            ],
          ),
        ),
        Divider(
          height: deviceHeight * 1,
          color: Colors.black12,
        ),
        ListTile(
            title: const Text('Refer & Earn'),
            subtitle: const Text('You will get ₹100'),
            onTap: () {},
            leading: Icon(
              Icons.person_outline,
              size: deviceHeight * 4,
            ),
            trailing: Container(
              width: deviceWidth * 25,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent)),
                  child: const Center(child: Text('INVITE')),
                  onPressed: () {}),
            )),
        ListTile(
          title: const Text('LeaderBoard'),
          onTap: () {},
          leading: Icon(Icons.leaderboard_outlined, size: deviceHeight * 4),
        ),
        ListTile(
          title: const Text('Verify Account'),
          onTap: () {},
          leading: Icon(Icons.verified_outlined, size: deviceHeight * 4),
        ),
        ListTile(
          title: const Text('Support'),
          onTap: () {},
          leading: Icon(Icons.phone_forwarded_outlined, size: deviceHeight * 4),
        ),
        ListTile(
          title: const Text('More'),
          onTap: () {},
          leading: Icon(Icons.more_horiz_outlined, size: deviceHeight * 4),
        ),
        ListTile(
          title: const Text('Log Out'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OnboardingPage()),
            );
          },
          leading: Icon(Icons.logout_outlined, size: deviceHeight * 4),
        ),
      ]),
    );
  }
}
