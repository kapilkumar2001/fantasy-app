import 'package:create11/views/screens/onboarding/otp_screen.dart';
import 'package:create11/views/screens/onboarding/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red[900],
        elevation: 0,
        title: const Text("CREATE11"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(deviceWidth * 5),
            child: Text(
              "Welcome to Create11",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: deviceWidth * 7),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(deviceWidth * 5),
            child: Container(
              width: deviceWidth * 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(deviceWidth * 5)),
              child: Column(children: [
                // Padding(
                //   padding: EdgeInsets.all(deviceWidth * 5),
                //   child: Text(
                //     "Mobile Number",
                //     textAlign: TextAlign.start,
                //     style: TextStyle(
                //         fontSize: deviceWidth * 5, color: Colors.black38),
                //   ),
                // ),
                SizedBox(
                  height: deviceHeight * 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Mobile Number',
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(deviceWidth * 5),
                  child: const Text(
                    "OTP will be sent to this number",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black38),
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
                            builder: (context) => const OTPScreen()),
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
                          "SEND OTP",
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

                SizedBox(
                  height: deviceWidth * 4,
                ),
                Padding(
                  padding: EdgeInsets.all(deviceWidth * 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.black38),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterScreen()),
                            );
                          },
                          child: Text(
                            "Register Now",
                            style: TextStyle(color: Colors.red[900]),
                          ))
                    ],
                  ),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
