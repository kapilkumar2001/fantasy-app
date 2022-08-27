import 'package:flutter/material.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({ Key? key }) : super(key: key);

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
                      Row(
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
                              Text(
                                "RadhaKrishna121",
                                style: TextStyle(fontSize: deviceWidth * 4),
                              ),
                              Text(
                                "Level 53",
                                style: TextStyle(fontSize: deviceWidth * 3),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: deviceWidth * 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("₹5204.87",
                                style: TextStyle(fontSize: deviceWidth * 7)),
                            Text("Total Balance",
                                style: TextStyle(fontSize: deviceWidth * 3))
                          ],
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green.shade700)),
                            onPressed: () {},
                            child: const Text("Add Cash")),
                      ],
                    ),
                  )
                ]),
          ),
          ListTile(
              title: const Text('Refer & Earn'),
              subtitle: const Text('You will get ₹100'),
              onTap: () {},
              leading: Icon(Icons.person_outline, size: deviceHeight*4,),
              trailing:
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent)),
                    child: const Text('INVITE'), 
                    onPressed: () {}
                  )
          ),
          ListTile(
            title: const Text('LeaderBoard'),
            onTap: () {},
            leading: Icon(Icons.leaderboard_outlined, size: deviceHeight*4),
          ),
          ListTile(
            title: const Text('Verify Account'),
            onTap: () {},
            leading: Icon(Icons.verified_outlined, size: deviceHeight*4),
          ),
          ListTile(
            title: const Text('Support'),
            onTap: () {},
            leading: Icon(Icons.phone_forwarded_outlined, size: deviceHeight*4),
          ),
          ListTile(
            title: const Text('More'),
            onTap: () {},
            leading: Icon(Icons.more_horiz_outlined, size: deviceHeight*4),
          ),
          ListTile(
            title: const Text('Log Out'),
            onTap: () {},
            leading: Icon(Icons.logout_outlined, size: deviceHeight*4),
          ),
        ]),
      );
  }
}