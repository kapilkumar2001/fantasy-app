import 'package:create11/provider/auth.dart';
import 'package:create11/views/screens/onboarding/login_screen.dart';
import 'package:create11/views/screens/onboarding/otp_screen.dart';
import 'package:create11/views/screens/others/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String? _verificationId;
  final SmsAutoFill _autoFill = SmsAutoFill();

  TextEditingController mobileController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        elevation: 0,
        title: Text("CREATE11"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(deviceWidth * 5),
          child: Container(
            width: deviceWidth * 90,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(deviceWidth * 5)),
            child:
                Form(
                  key: _formKey,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              Padding(
                  padding: EdgeInsets.all(deviceWidth * 5),
                  child: Text(
                    "Register",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: deviceWidth * 5, fontWeight: FontWeight.bold),
                  ),
                              ),
                              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                  child: TextFormField(
                    controller: fnameController,
                    decoration: const InputDecoration(
                      hintText: 'First Name',
                    ),
                    validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter first name";
                              }
                              return null;
                            },
                  ),
                              ),
                              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                  child: TextFormField(
                    controller: lnameController,
                    decoration: const InputDecoration(
                      hintText: 'Last Name',
                    ),
                    validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter last name";
                              }
                              return null;
                            },
                  ),
                              ),
                              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                  child: TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      hintText: 'Username',
                    ),
                    validator: (value) {
                              if (value!.length < 6) {
                                return "username length should be more than 6";
                              }
                              return null;
                            },
                  ),
                  
                              ),
                              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                  child: TextFormField(
                    controller: mobileController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Mobile Number',
                    ),
                    validator: (value) {
                              if (value!.length != 10) {
                                return "Please enter a valid Mobile Number";
                              }
                              return null;
                            },
                  ),
                              ),
                              SizedBox(
                  height: deviceWidth * 4,
                              ),
                              Padding(
                  padding: EdgeInsets.all(deviceWidth * 5),
                  child: InkWell(
                    onTap: () async {
                      if (_formKey.currentState!.validate()){
                      await Provider.of<Auth>(context, listen: false)
                                    .verifyPhoneNumber(
                                        mobileController.text, context, fname: fnameController.text,lname:  lnameController.text,username:  usernameController.text );
                      }
                    },
                    child: Container(
                      width: deviceWidth * 80,
                      decoration: BoxDecoration(
                          color: Colors.red[900],
                          // border: Border.all(),
                          borderRadius:
                              BorderRadius.all(Radius.circular(deviceWidth * 5))),
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
                        "Already have an account? ",
                        style: TextStyle(color: Colors.black38),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                            );
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(color: Colors.red[900]),
                          ))
                    ],
                  ),
                              )
                            ]),
                ),
          ),
        ),
      ),
    );
  }
}
