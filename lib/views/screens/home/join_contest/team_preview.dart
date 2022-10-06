import 'package:create11/views/screens/home/home_page.dart';
import 'package:create11/views/screens/others/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TeamPreviewPage extends StatefulWidget {
  const TeamPreviewPage({Key? key}) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blueGrey[500],
                          child: const Icon(Icons.person_rounded)),
                      Text(
                        "MS Dhoni",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(deviceWidth * 5),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBoard()),
                    );
                  },
                  child: Container(
                    color: Colors.red[900],
                    height: deviceWidth * 10,
                    width: deviceWidth * 80,
                    child: Center(
                        child: Text(
                      "Continue and Join Contest",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
