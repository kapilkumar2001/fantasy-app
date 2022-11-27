import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddCash extends StatefulWidget {
  const AddCash({Key? key}) : super(key: key);

  @override
  State<AddCash> createState() => _AddCashState();
}

class _AddCashState extends State<AddCash> {
  TextEditingController amountController = TextEditingController();
  TextEditingController promocodeController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    amountController.text = "0";
  }
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Cash"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(deviceWidth * 2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: deviceHeight * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: deviceWidth * 30,
                          child: Text(
                            "Deposit",
                            textAlign: TextAlign.center,
                          )),
                      Container(
                          width: deviceWidth * 30,
                          child: Text(
                            "0.00",
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: deviceWidth * 30,
                          child: Text(
                            "Winning",
                            textAlign: TextAlign.center,
                          )),
                      Container(
                          width: deviceWidth * 30,
                          child: Text(
                            "0.00",
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: deviceWidth * 30,
                          child: Text(
                            "Fancash",
                            textAlign: TextAlign.center,
                          )),
                      Container(
                          width: deviceWidth * 30,
                          child: Text(
                            "300.00",
                            textAlign: TextAlign.center,
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 5, vertical: deviceHeight * 1),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: amountController,
                  autocorrect: true,
                  style: TextStyle(
                    // fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Amount",
                    labelText: "Enter Amount",
                    filled: false,
                    // fillColor: violet,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Amount";
                    }
                    return null;
                  },
                ),
              ),

               SizedBox(
                height: deviceHeight * 3,
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 3, vertical: deviceHeight * 1),
                child: Text(
                  "Choose your amount",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        amountController.text = (int.parse(amountController.text)+100).toString();
                      });
                    },
                    child: Container(
                      width: deviceWidth * 20,
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "+100",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        amountController.text = (int.parse(amountController.text)+500).toString();
                      });
                    },
                    child: Container(
                      width: deviceWidth * 20,
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "+500",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        amountController.text = (int.parse(amountController.text)+1000).toString();
                      });
                    },
                    child: Container(
                      width: deviceWidth * 20,
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "+1000",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
              ],),

              SizedBox(
                height: deviceHeight * 5,
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 3, vertical: deviceHeight * 1),
                child: Text(
                  "Do you have a Promotion Code?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 3,
                        vertical: deviceHeight * 1),
                    child: Container(
                      width: deviceWidth * 65,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        controller: promocodeController,
                        autocorrect: true,
                        style: TextStyle(
                          // fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: "Enter Promo Code",
                          labelText: "Enter Promo Code",
                          filled: false,
                          // fillColor: violet,
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter Promo Code";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: deviceWidth * 20,
                    color: Colors.black,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "APPLY",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                "Available Offers",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("FIRST BONUS"),
                  Text("Add 399-499 and get 100% cashback"),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(deviceWidth * 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: deviceWidth * 20,
                          color: Colors.grey,
                          child: Padding(
                            padding: EdgeInsets.all(deviceWidth * 3),
                            child: const Text(
                              "FIRST",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                promocodeController.text = "FIRST";
                              });
                            },
                            child: const Text(
                              "APPLY",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                  const Divider(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
