import 'package:create11/views/screens/home/contest_page.dart';
import 'package:flutter/material.dart';

class ContestCard extends StatefulWidget {
  const ContestCard({Key? key}) : super(key: key);

  @override
  State<ContestCard> createState() => _ContestCardState();
}

class _ContestCardState extends State<ContestCard> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: deviceWidth * 5, vertical: deviceWidth * 1),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ContestPage()),
          );
        },
        child: Card(
          shadowColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(deviceWidth * 5),
          ),
          child: Column(children: [
            SizedBox(
              height: deviceHeight * 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: deviceWidth * 25,
                          child: Text(
                            "₹10000",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: deviceWidth * 5,
                            ),
                          ),
                        ),
                        Container(
                            width: deviceWidth * 25,
                            child: const Text(
                              "Prize Pool",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.black38),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: deviceWidth * 25,
                          child: Text(
                            "₹5199",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: deviceWidth * 5,
                            ),
                          ),
                        ),
                        Container(
                          width: deviceWidth * 25,
                          child: const Text("Entry Fee",
                              textAlign: TextAlign.end,
                              style: TextStyle(color: Colors.black38)),
                        )
                      ],
                    ),
                  ]),
            ),
            SliderTheme(
              child: Slider(
                activeColor: Colors.red[900],
                inactiveColor: Colors.black38,
                value: 1489,
                max: 4999,
                divisions: 4999,
                onChanged: (double value) {
                  setState(() {});
                },
              ),
              data: SliderTheme.of(context).copyWith(
                  trackHeight: deviceHeight * 0.5,
                  thumbColor: Colors.transparent,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 0.0)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "3511 Spots Left",
                    style: TextStyle(color: Colors.red[900]),
                  ),
                  const Text("4999 Spots",
                      style: TextStyle(color: Colors.black38))
                ],
              ),
            ),
            Divider(
              height: deviceWidth * 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: deviceWidth * 25,
                      child: const Text(
                        "₹30000",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                      )),
                  Container(
                      width: deviceWidth * 25,
                      child: const Text(
                        "1500 Team Win",
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
