import 'package:create11/views/screens/home/join_contest/contest_page.dart';
import 'package:flutter/material.dart';

class ContestCard extends StatefulWidget {
  var contestDetails;
  ContestCard(this.contestDetails);

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
                            ((int.parse(widget
                                        .contestDetails['entry_amount'])) *
                                    (int.parse(widget
                                        .contestDetails['contest_limit'])))
                                .toString(),
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
                            widget.contestDetails['entry_amount'],
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
              data: SliderTheme.of(context).copyWith(
                  trackHeight: deviceHeight * 0.5,
                  thumbColor: Colors.transparent,
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 0.0)),
              child: Slider(
                activeColor: Colors.red[900],
                inactiveColor: Colors.black38,
                value: double.parse(widget.contestDetails['contest_limit']),
                max: double.parse(widget.contestDetails['contest_limit']),
                divisions: int.parse(widget.contestDetails['contest_limit']),
                onChanged: (double value) {
                  setState(() {});
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.contestDetails['contest_limit']} Spots Left",
                    style: TextStyle(color: Colors.red[900]),
                  ),
                  Text("${widget.contestDetails['contest_limit']} Spots",
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
              child: Container(
                  width: deviceWidth * 80,
                  child: Text(
                    "Contest Name: ${widget.contestDetails['name']}",
                    //  overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  )),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //           width: deviceWidth * 25,
            //           child: const Text(
            //             "₹30000",
            //             overflow: TextOverflow.ellipsis,
            //             textAlign: TextAlign.start,
            //           )),
            //       Container(
            //           width: deviceWidth * 25,
            //           child: const Text(
            //             "1500 Team Win",
            //             textAlign: TextAlign.center,
            //           )),
            //     ],
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
