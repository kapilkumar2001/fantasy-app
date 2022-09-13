import 'package:create11/views/screens/onboarding/login_screen.dart';
import 'package:create11/views/screens/others/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  decoration: const InputDecoration(
                    hintText: 'Mobile Number',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email Address',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Date of Birth',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 5, vertical: deviceWidth * 2),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Confirm Password',
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
                        borderRadius:
                            BorderRadius.all(Radius.circular(deviceWidth * 5))),
                    child: Padding(
                      padding: EdgeInsets.all(deviceWidth * 5),
                      child: Text(
                        "CREATE ACCOUNT",
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
    );
  }
}
