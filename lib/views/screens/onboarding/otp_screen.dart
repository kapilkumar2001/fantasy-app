import 'package:create11/views/screens/others/dashboard.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(deviceWidth * 5),
            child: Container(
              width: deviceWidth * 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(deviceWidth * 5)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(deviceWidth * 5),
                      child: Text(
                        "Verification Code",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: deviceWidth * 5,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 3,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 5),
                      child: Text(
                        "We have sent an OTP on your number",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: deviceWidth * 4, color: Colors.black38),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 2,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: deviceWidth * 5),
                      child: Text(
                        "9016399741",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: deviceWidth * 4, color: Colors.red[900]),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 3,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 5,
                          vertical: deviceWidth * 2),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter OTP',
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DashBoard()),
                          );
                        },
                        child: Container(
                          width: deviceWidth * 80,
                          decoration: BoxDecoration(
                              color: Colors.red[900],
                              // border: Border.all(),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(deviceWidth * 5))),
                          child: Padding(
                            padding: EdgeInsets.all(deviceWidth * 5),
                            child: Text(
                              "CONTINUE",
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
            ),
          ),
        ]),
      ),
    );
  }
}
