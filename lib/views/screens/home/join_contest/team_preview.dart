import 'package:create11/services/data.dart';
import 'package:create11/views/screens/home/home_page.dart';
import 'package:create11/views/screens/others/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TeamPreviewPage extends StatefulWidget {
  var contestDetails, createdTeam;
  TeamPreviewPage(this.contestDetails, this.createdTeam);

  @override
  State<TeamPreviewPage> createState() => _TeamPreviewPageState();
}

class _TeamPreviewPageState extends State<TeamPreviewPage> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Team"),
        backgroundColor: Colors.black,
      ),
      body: Container(
          height: deviceHeight * 100,
          width: deviceWidth * 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/pitch.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child:  GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 4,

          padding: EdgeInsets.symmetric(vertical: deviceWidth*20),
          // Generate 100 widgets that display their index in the List.
          children: List.generate(widget.createdTeam.length, (index) {
          
            return Center(
              child:         Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Container(
                        width: deviceWidth*25,
                        child: Text(

                          widget.createdTeam[index]['name'],
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
            );
          }),
        ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
                  // Column(
                  //   children: [
                  //     CircleAvatar(
                  //         backgroundColor: Colors.blueGrey[500],
                  //         child: const Icon(Icons.person_rounded)),
                  //     Text(
                  //       "MS Dhoni",
                  //       style: TextStyle(color: Colors.white),
                  //     )
                  //   ],
                  // ),
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             CircleAvatar(
          //                 backgroundColor: Colors.blueGrey[500],
          //                 child: const Icon(Icons.person_rounded)),
          //             Text(
          //               "MS Dhoni",
          //               style: TextStyle(color: Colors.white),
          //             )
          //           ],
          //         ),
          //       ],
          //     ),
          //     Padding(
          //       padding: EdgeInsets.all(deviceWidth * 5),
          //       child: InkWell(
          //         onTap: () async {
          //           // TODO: Change userID and paymentID
          //           // this is just for testng purpose. ID being used is user id 8
          //           var participate = await Data().participateInContest(widget.contestDetails['contest_code'], "200", "8");
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const DashBoard()),
          //           );
          //         },
          //         child: Container(
          //           color: Colors.red[900],
          //           height: deviceWidth * 10,
          //           width: deviceWidth * 80,
          //           child: Center(
          //               child: Text(
          //             "Continue and Join Contest",
          //             style: TextStyle(
          //                 fontWeight: FontWeight.bold, color: Colors.white),
          //           )),
          //         ),
          //       ),
          //     ),
          //   ],
          // )
          ),

          bottomNavigationBar: InkWell(
          onTap: () {
            
                   Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DashBoard()));
               
          },
          child: Padding(
            padding: EdgeInsets.all(deviceWidth * 5),
            child: Container(
              color: Colors.red[900],
              height: deviceWidth * 10,
              width: deviceWidth * 80,
              child: Center(
                  child: Text(
                "Participate",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
    );
  }
}
