import 'package:create11/constants/strings.dart';
import 'package:flutter/material.dart';

import '../account/add_cash.dart';
import '../more/update_profile.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(Strings.account),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: deviceWidth * 100,
                color: Colors.redAccent,
                child: Padding(
                  padding: EdgeInsets.all(deviceWidth * 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: deviceWidth * 5),
                        child: CircleAvatar(
                          radius: deviceWidth * 10,
                          backgroundColor: Colors.black87,
                          backgroundImage:
                              const AssetImage("assets/images/wind.jpg"),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: deviceWidth * 65,
                              child: Text(
                                "Radha Krishna",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviceWidth * 5),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                 Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UpdateProfile()),
                );
                              },
                              child: Container(
                                width: deviceWidth * 20,
                                child: const Text(
                                  "Edit Profile",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              )),
                        ],
                      )
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(deviceWidth * 5),
              child: Card(
                shadowColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(deviceWidth * 3),
                ),
                child: Container(
                  width: deviceWidth * 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: deviceHeight * 2,
                      ),
                      Container(
                        width: deviceWidth * 90,
                        child: Center(
                          child: Text(
                            Strings.totalBalance,
                            style: TextStyle(
                                fontSize: deviceHeight * 2.2,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.7,
                      ),
                      Container(
                        width: deviceWidth * 90,
                        child: Center(
                          child: Text(
                            "₹5204.87",
                            style: TextStyle(fontSize: deviceHeight * 2.2),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.7,
                      ),
                      ElevatedButton(
                        onPressed: () {
                           Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AddCash()),
      );
                        },
                        child: const Text("Add Cash"),
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
                            Container(
                              width: deviceWidth * 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Strings.deposited,
                                      style: TextStyle(
                                          fontSize: deviceHeight * 2.2)),
                                  Text(
                                    "₹5204.87",
                                    style:
                                        TextStyle(fontSize: deviceHeight * 2.2),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(Icons.info_outline)
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
                            Container(
                              width: deviceWidth * 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Strings.winnings,
                                      style: TextStyle(
                                          fontSize: deviceHeight * 2.2)),
                                  Text(
                                    "₹3.87",
                                    style:
                                        TextStyle(fontSize: deviceHeight * 2.2),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(Icons.info_outline)
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          customDialogBox(context);
                        },
                        child: const Text("Withdraw"),
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
                            Container(
                              width: deviceWidth * 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Strings.cashBonus,
                                      style: TextStyle(
                                          fontSize: deviceHeight * 2.2)),
                                  Text(
                                    "₹0.00",
                                    style:
                                        TextStyle(fontSize: deviceHeight * 2.2),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(Icons.info_outline)
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
              child: Card(
                shadowColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(deviceWidth * 3),
                ),
                child: Container(
                  width: deviceWidth * 90,
                  child: Padding(
                    padding: EdgeInsets.all(deviceWidth * 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recent Transactions",
                            style: TextStyle(fontSize: deviceHeight * 2.2)),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: deviceHeight * 1.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(deviceWidth * 5),
              child: Card(
                shadowColor: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(deviceWidth * 3),
                ),
                child: Container(
                  width: deviceWidth * 90,
                  child: Padding(
                    padding: EdgeInsets.all(deviceWidth * 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Refer and Earn",
                            style: TextStyle(fontSize: deviceHeight * 2.2)),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: deviceHeight * 1.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

customDialogBox(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        double? deviceHeight = MediaQuery.of(context).size.height / 100;
        double? deviceWidth = MediaQuery.of(context).size.width / 100;
        return AlertDialog(
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(deviceWidth * 4))),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(deviceWidth * 4))),
                    tileColor: Colors.redAccent,
                    title: Text(
                      "Winning Balance",
                      style: TextStyle(
                          color: Colors.white, fontSize: deviceWidth * 5),
                    ),
                    subtitle: Text("₹3.87",
                        style: TextStyle(
                            color: Colors.white, fontSize: deviceWidth * 5)),
                    trailing: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close_outlined,
                          color: Colors.white,
                        ))),
                SizedBox(
                  height: deviceHeight * 2,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius:
                            BorderRadius.all(Radius.circular(deviceWidth * 1))),
                    width: deviceWidth * 50,
                    child: Padding(
                      padding: EdgeInsets.all(deviceWidth * 2),
                      child: const Text(
                        "Instant Bank Withdraw",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 1.5,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius:
                            BorderRadius.all(Radius.circular(deviceWidth * 1))),
                    width: deviceWidth * 50,
                    child: Padding(
                      padding: EdgeInsets.all(deviceWidth * 2),
                      child: const Text(
                        "Instant Bank Withdraw",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 2,
                )
              ],
            ));
      });
}
