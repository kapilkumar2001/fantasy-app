import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'More',
          style: TextStyle(fontSize: deviceHeight * 3),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: deviceHeight * 1,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                radius: deviceWidth * 5,
                backgroundColor: Colors.red,
                child: Icon(Icons.person_outline),
              ),
              title:
                  Text("Profile", style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                  radius: deviceWidth * 5,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.attach_money_outlined)),
              title: Text("Refer & Earn",
                  style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                radius: deviceWidth * 5,
                backgroundColor: Colors.red,
                child: Icon(Icons.verified_user_outlined),
              ),
              title: Text("Verify Account",
                  style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                radius: deviceWidth * 5,
                backgroundColor: Colors.red,
                child: Icon(Icons.stacked_bar_chart),
              ),
              title: Text("Fantasy Point System",
                  style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                radius: deviceWidth * 5,
                backgroundColor: Colors.red,
                child: Icon(Icons.list_alt_outlined),
              ),
              title: Text("Refer List",
                  style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                radius: deviceWidth * 5,
                backgroundColor: Colors.red,
                child: Icon(Icons.policy_outlined),
              ),
              title: Text("Privacy Policy",
                  style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                radius: deviceWidth * 5,
                backgroundColor: Colors.red,
                child: Icon(Icons.notes_outlined),
              ),
              title: Text("Terms & Conditions",
                  style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                radius: deviceWidth * 5,
                backgroundColor: Colors.red,
                child: Icon(Icons.privacy_tip_outlined),
              ),
              title: Text("About Us",
                  style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                radius: deviceWidth * 5,
                backgroundColor: Colors.red,
                child: Icon(Icons.local_play_outlined),
              ),
              title: Text("How to Play",
                  style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: ListTile(
              leading: CircleAvatar(
                radius: deviceWidth * 5,
                backgroundColor: Colors.red,
                child: Icon(Icons.notes_outlined),
              ),
              title: Text("Legality",
                  style: TextStyle(fontSize: deviceHeight * 2)),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                size: deviceHeight * 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
