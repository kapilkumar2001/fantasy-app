import 'package:create11/services/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateContest extends StatefulWidget {
  String? fixture_id;
  CreateContest(this.fixture_id);

  @override
  State<CreateContest> createState() => _CreateContestState();
}

class _CreateContestState extends State<CreateContest> {
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController limitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Create Contest"),
        backgroundColor: Colors.red[900],
      ),
      body: Column(children: [
        SizedBox(
          height: deviceWidth * 5,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
          child: TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Contest Name',
            ),
          ),
        ),
        SizedBox(
          height: deviceWidth * 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
          child: TextFormField(
            controller: amountController,
            decoration: const InputDecoration(
              hintText: 'Entry Amount',
            ),
          ),
        ),
        SizedBox(
          height: deviceWidth * 2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
          child: TextFormField(
            controller: limitController,
            decoration: const InputDecoration(
              hintText: 'Players Limit',
            ),
          ),
        ),
        SizedBox(
          height: deviceWidth * 4,
        ),
        Padding(
          padding: EdgeInsets.all(deviceWidth * 5),
          child: InkWell(
            onTap: () {
              var contest = Data().createContest(
                  nameController.text.toString(),
                  widget.fixture_id!,
                  limitController.text.toString(),
                  amountController.text.toString());
              
              Navigator.pop(context);
             
            },
            child: Container(
              width: deviceWidth * 80,
              decoration: BoxDecoration(
                  color: Colors.red[900],
                  // border: Border.all(),
                  borderRadius:
                      BorderRadius.all(Radius.circular(deviceWidth * 5))),
              child: Padding(
                padding: EdgeInsets.all(deviceWidth * 4),
                child: Text(
                  "Create",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: deviceWidth * 4,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
