import 'package:create11/views/screens/onboarding/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:create11/services/data.dart';
import 'package:create11/views/screens/onboarding/onboarding_page.dart';
import 'package:create11/views/screens/others/dashboard.dart';
import 'package:create11/views/widgets/msg_toast.dart';

import '../../../provider/auth.dart';

class OTPScreen extends StatefulWidget {
  String? fname, lname, username, mobile;
  OTPScreen({this.fname, this.lname, this.mobile, this.username});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  int? loginInfo;

  TextEditingController otpController = TextEditingController();

  void showSnackbar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

//   void signInWithPhoneNumber() async {
//     try {
//       final AuthCredential credential = PhoneAuthProvider.credential(
//         verificationId: widget.verificationId,
//         smsCode: otpController.text,
//       );

//       final User? user = (await _auth.signInWithCredential(credential)).user;

  // if(widget.fname!=null)
  // {
  //   Data().addUser(widget.fname!, widget.lname!, widget.username!, widget.mobile!);
  // }

  // Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const DashBoard()),
  // );

//  //     showSnackbar("Successfully signed in UID: ${user!.uid}");
//     } catch (e) {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const OnboardingPage()),
  // );
//       showSnackbar("Failed to sign in: $e");
//     }
//   }

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
                    // Padding(
                    //   padding:
                    //       EdgeInsets.symmetric(horizontal: deviceWidth * 5),
                    //   child: Text(
                    //     "",
                    //     textAlign: TextAlign.start,
                    //     style: TextStyle(
                    //         fontSize: deviceWidth * 4, color: Colors.red[900]),
                    //   ),
                    // ),
                    SizedBox(
                      height: deviceHeight * 3,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth * 5,
                          vertical: deviceWidth * 2),
                      child: TextFormField(
                        controller: otpController,
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
                        onTap: () async {
                          loginInfo =
                              await Provider.of<Auth>(context, listen: false)
                                  .submitOTP(otpController.text.toString());

                          if (loginInfo == 1) {
                            Auth.setUid();
                            // new user

                            if (widget.fname != null) {
                              // registering
                              Data().addUser(widget.fname!, widget.lname!,
                                  widget.username!, widget.mobile!);
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DashBoard()),
                                  (route) => false);
                            } else {
                              // directly logging without registering
                              msgToast("User not registered, kinldy register");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen()),
                              );
                            }
                          } else if (loginInfo == 0) {
                            // existing user
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DashBoard()),
                                (route) => false);
                          } else {
                            // login failed
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OnboardingPage()),
                            );
                            msgToast("Failed to login, try again!");
                          }

                          //                      if(fnameController.text!=null)
                          // {
                          //   Data().addUser(fname, lname!, username!, mobile!);
                          // }
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
