import 'package:flutter/material.dart';

class CompareTeamsPage extends StatefulWidget {
  const CompareTeamsPage({Key? key}) : super(key: key);

  @override
  State<CompareTeamsPage> createState() => _CompareTeamsPageState();
}

class _CompareTeamsPageState extends State<CompareTeamsPage> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Compare Team",
          style: TextStyle(color: Colors.black),
        ),
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(deviceWidth * 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: deviceWidth * 10,
                            backgroundColor: Colors.black87,
                            backgroundImage:
                                const AssetImage("assets/images/sl.jpg"),
                          ),
                          SizedBox(
                            height: deviceHeight * 1,
                          ),
                          Container(
                              width: deviceWidth * 33,
                              child: Text(
                                "RadhaKrishna131(T1)",
                                style: TextStyle(fontSize: deviceWidth * 4),
                              )),
                          Container(
                              width: deviceWidth * 33,
                              child: Text("#1",
                                  style: TextStyle(
                                      fontSize: deviceWidth * 4,
                                      color: Colors.black26)))
                        ]),
                    Column(children: [
                      Container(
                        width: deviceWidth * 20,
                        child: Text(
                          "Total Points",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black38, fontSize: deviceWidth * 4),
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red[200],
                            ),
                            width: deviceWidth * 10,
                            child: Padding(
                              padding: EdgeInsets.all(deviceWidth * 1),
                              child: Text(
                                "536",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviceWidth * 4),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red[800],
                            ),
                            width: deviceWidth * 10,
                            child: Padding(
                              padding: EdgeInsets.all(deviceWidth * 1),
                              child: Text(
                                "547",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviceWidth * 4),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: deviceWidth * 10,
                            backgroundColor: Colors.black87,
                            backgroundImage:
                                const AssetImage("assets/images/aus.jpg"),
                          ),
                          SizedBox(
                            height: deviceHeight * 1,
                          ),
                          Container(
                              width: deviceWidth * 33,
                              child: Text(
                                "jithincr(T1)",
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: deviceWidth * 4),
                              )),
                          Container(
                              width: deviceWidth * 33,
                              child: Text("#1",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: deviceWidth * 4,
                                      color: Colors.black26)))
                        ]),
                  ]),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(deviceWidth * 5),
              child: Text(
                "Your opponent is leading by 11.00",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: deviceWidth * 6.5,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(children: [
              SizedBox(
                height: deviceHeight * 2,
              ),
              Text(
                "Captain and Vice Captain",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: deviceWidth * 5),
              ),
              Text(
                "You and your opponent C & VC have same points 0.00",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black38, fontSize: deviceWidth * 4),
              ),
              SizedBox(
                height: deviceHeight * 3,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: deviceWidth * 4,
                              bottom: deviceWidth * 4,
                              left: deviceWidth * 4),
                          child: CircleAvatar(
                            radius: deviceWidth * 5,
                            backgroundColor: Colors.black87,
                            backgroundImage:
                                const AssetImage("assets/images/aus.jpg"),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "S Raza",
                                style: TextStyle(
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "all Rounder",
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[200],
                              ),
                              width: deviceWidth * 10,
                              child: Padding(
                                padding: EdgeInsets.all(deviceWidth * 1),
                                child: Text(
                                  "536",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceWidth * 4),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[800],
                              ),
                              width: deviceWidth * 10,
                              child: Padding(
                                padding: EdgeInsets.all(deviceWidth * 1),
                                child: Text(
                                  "547",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceWidth * 4),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "S Raza",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "all Rounder",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: deviceWidth * 4,
                              bottom: deviceWidth * 4,
                              right: deviceWidth * 4),
                          child: CircleAvatar(
                            radius: deviceWidth * 5,
                            backgroundColor: Colors.black87,
                            backgroundImage:
                                const AssetImage("assets/images/aus.jpg"),
                          ),
                        ),
                      ],
                    );
                  }),
              SizedBox(
                height: deviceHeight * 2,
              ),
              Text(
                "Different Players",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: deviceWidth * 5),
              ),
              Text(
                "Your opponent points are leading by 11.00",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black38, fontSize: deviceWidth * 4),
              ),
              SizedBox(
                height: deviceHeight * 3,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: deviceWidth * 4,
                              bottom: deviceWidth * 4,
                              left: deviceWidth * 4),
                          child: CircleAvatar(
                            radius: deviceWidth * 5,
                            backgroundColor: Colors.black87,
                            backgroundImage:
                                const AssetImage("assets/images/aus.jpg"),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "S Raza",
                                style: TextStyle(
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "all Rounder",
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[200],
                              ),
                              width: deviceWidth * 10,
                              child: Padding(
                                padding: EdgeInsets.all(deviceWidth * 1),
                                child: Text(
                                  "536",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceWidth * 4),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[800],
                              ),
                              width: deviceWidth * 10,
                              child: Padding(
                                padding: EdgeInsets.all(deviceWidth * 1),
                                child: Text(
                                  "547",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceWidth * 4),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "S Raza",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "all Rounder",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: deviceWidth * 4,
                              bottom: deviceWidth * 4,
                              right: deviceWidth * 4),
                          child: CircleAvatar(
                            radius: deviceWidth * 5,
                            backgroundColor: Colors.black87,
                            backgroundImage:
                                const AssetImage("assets/images/aus.jpg"),
                          ),
                        ),
                      ],
                    );
                  }),
              SizedBox(
                height: deviceHeight * 2,
              ),
              Text(
                "Common Players",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: deviceWidth * 5),
              ),
              Text(
                "Common Players 187",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black38, fontSize: deviceWidth * 4),
              ),
              SizedBox(
                height: deviceHeight * 3,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: deviceWidth * 4,
                              bottom: deviceWidth * 4,
                              left: deviceWidth * 4),
                          child: CircleAvatar(
                            radius: deviceWidth * 5,
                            backgroundColor: Colors.black87,
                            backgroundImage:
                                const AssetImage("assets/images/aus.jpg"),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "S Raza",
                                style: TextStyle(
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "all Rounder",
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[200],
                              ),
                              width: deviceWidth * 10,
                              child: Padding(
                                padding: EdgeInsets.all(deviceWidth * 1),
                                child: Text(
                                  "536",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceWidth * 4),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red[800],
                              ),
                              width: deviceWidth * 10,
                              child: Padding(
                                padding: EdgeInsets.all(deviceWidth * 1),
                                child: Text(
                                  "547",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: deviceWidth * 4),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "S Raza",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Container(
                              width: deviceWidth * 20,
                              child: Text(
                                "all Rounder",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: deviceWidth * 4,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: deviceWidth * 4,
                              bottom: deviceWidth * 4,
                              right: deviceWidth * 4),
                          child: CircleAvatar(
                            radius: deviceWidth * 5,
                            backgroundColor: Colors.black87,
                            backgroundImage:
                                const AssetImage("assets/images/aus.jpg"),
                          ),
                        ),
                      ],
                    );
                  }),
            ]),
          )
        ]),
      ),
    );
  }
}
