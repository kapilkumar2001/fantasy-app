import 'package:create11/views/screens/more/aboutus.dart';
import 'package:create11/views/screens/more/fantasy_points_system.dart';
import 'package:create11/views/screens/more/howtoplay.dart';
import 'package:create11/views/screens/more/legality.dart';
import 'package:create11/views/screens/more/privacy_policy.dart';
import 'package:create11/views/screens/more/refer_earn.dart';
import 'package:create11/views/screens/more/tnc.dart';
import 'package:create11/views/screens/more/update_profile.dart';
import 'package:create11/views/screens/more/verify_account.dart';
import 'package:flutter/material.dart';

import '../../../provider/auth.dart';
import '../onboarding/onboarding_page.dart';
import '../others/compare_teams.dart';
import 'package:provider/provider.dart';

import 'contactus.dart';
import 'referlist.dart';

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
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UpdateProfile()),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: deviceWidth * 5,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.person_outline),
                ),
                title: Text("Profile",
                    style: TextStyle(fontSize: deviceHeight * 2)),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: deviceHeight * 2,
                ),
              ),
            ),
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ReferAndEarn()),
                );
              },
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
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VerifyAccount()),
                );
              },
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
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FantasyPointsSystem()),
                );
              },
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
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                           Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ReferList()),
                );
              },
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
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy()),
                );
              },
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
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TermsAndConditions()),
                );
              },
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
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUs()),
                );
              },
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
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HowToPlay()),
                );
              },
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
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Legality()),
                );
              },
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
          ),
          Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactUs()),
                );
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: deviceWidth * 5,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.privacy_tip_outlined),
                ),
                title: Text("Contact Us",
                    style: TextStyle(fontSize: deviceHeight * 2)),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: deviceHeight * 2,
                ),
              ),
            ),
          ),
           Divider(
            height: deviceHeight * 0.5,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: deviceHeight * 0.5),
            child: GestureDetector(
              onTap: () async {
                await Provider.of<Auth>(context, listen: false).logout();

                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return OnboardingPage();
                }), (route) => false);
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: deviceWidth * 5,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.logout),
                ),
                title: Text("Logout",
                    style: TextStyle(fontSize: deviceHeight * 2)),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: deviceHeight * 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
