import 'package:create11/services/data.dart';
import 'package:create11/views/screens/onboarding/login_screen.dart';
import 'package:create11/views/screens/onboarding/register_screen.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;
    double? deviceWidth = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: deviceHeight * 80,
            ),
            Padding(
              padding: EdgeInsets.all(deviceWidth * 5),
              child: InkWell(
                onTap: () {
                //  Data().getUsers();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                child: Container(
                  width: deviceWidth * 90,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:
                          BorderRadius.all(Radius.circular(deviceWidth * 1))),
                  child: Padding(
                    padding: EdgeInsets.all(deviceWidth * 3),
                    child: Text(
                      "REGISTER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: deviceWidth * 4,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceWidth * 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Invited by a friend?",
                      ),
                      Text(
                        "Enter Code",
                        style: TextStyle(
                            fontSize: deviceWidth * 4,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("Already a user?"),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: deviceWidth * 4,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
