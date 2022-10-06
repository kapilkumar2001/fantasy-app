import 'package:create11/provider/auth.dart';
import 'package:create11/views/screens/onboarding/otp_screen.dart';
import 'package:create11/views/screens/onboarding/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String? _verificationId;
  final SmsAutoFill _autoFill = SmsAutoFill();
  TextEditingController mobileController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
              child: Form(
                key: _formKey,
                child: Column(children: [
                  SizedBox(
                    height: deviceHeight * 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                    child: TextFormField(
                      controller: mobileController,
                      decoration: const InputDecoration(
                        hintText: 'Enter Mobile Number',
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.length != 10) {
                          return "Please enter a valid Mobile Number";
                        }
                        return null;
                      },
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
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          await Provider.of<Auth>(context, listen: false)
                              .verifyPhoneNumber(
                                  mobileController.text, context);
                        }
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
                                    builder: (context) =>
                                        const RegisterScreen()),
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
          ),
        ]),
      ),
    );
  }
}
