import 'package:create11/provider/auth.dart';
import 'package:create11/views/screens/onboarding/onboarding_page.dart';
import 'package:create11/views/screens/onboarding/splash_screen.dart';
import 'package:create11/views/screens/others/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Init.instance.initialize(context),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(home: SplashScreen());
          } else {
            return MultiProvider(
                providers: [
                  ChangeNotifierProvider<Auth>(
                    create: (_) => Auth(),
                  ),
                ],
                child: MaterialApp(
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  home: getHome(snapshot.data),
                  debugShowCheckedModeBanner: false,
                ));
          }
        });
  }

  Widget getHome(int authLevel) {
    switch (authLevel) {
      case -1:
        return OnboardingPage();
      case 0:
        return DashBoard();
      default:
        return Center(child: Text('Something Went wrong : ((((('));
    }
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future<int?> initialize(BuildContext context) async {
    await Firebase.initializeApp();
    if (!Auth.isAuth) {
      return -1;
    } else {
      Auth.setUid();
      return 0;
    }
  }
}
