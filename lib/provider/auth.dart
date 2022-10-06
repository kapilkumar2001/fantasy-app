import 'package:create11/services/data.dart';
import 'package:create11/views/screens/onboarding/onboarding_page.dart';
import 'package:create11/views/screens/onboarding/otp_screen.dart';
import 'package:create11/views/widgets/msg_toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Auth with ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? firebaseUser;
  static bool didSignOut = false;
  static String? uid;

  AuthCredential? _phoneAuthCredential;
  String? _verificationId;
  int? _code;

  void _handleError(e) {
    // // print(e.message);
  }

  Future<void> getFirebaseUser() async {
    firebaseUser = FirebaseAuth.instance.currentUser!;
  }

  static bool get isAuth {
    User? user = FirebaseAuth.instance.currentUser;
    return user == null ? false : true;
  }

  static setUid() {
    uid = FirebaseAuth.instance.currentUser!.uid.toString();
  }

  Future<bool> login() async {
    int flag = 0;
    try {
      await FirebaseAuth.instance
          .signInWithCredential(_phoneAuthCredential!)
          .then((UserCredential authRes) {
        firebaseUser = authRes.user!;
      }).catchError((e) {
        flag = 1;
        _handleError(e);
      });
      if (flag == 0)
        return true;
      else
        return false;
    } catch (e) {
      _handleError(e);
      return false;
    }
  }

  Future<void> logout() async {
    didSignOut = true;
    try {
      await FirebaseAuth.instance.signOut();
      firebaseUser = null;
    } catch (e) {
      _handleError(e);
    }
  }

  Future<void> verifyPhoneNumber(String phone, context,
      {String? fname, String? lname, String? username}) async {
    String phoneNumber = "+91 ${phone.toString().trim()}";

    void verificationCompleted(AuthCredential phoneAuthCredential) {
      _phoneAuthCredential = phoneAuthCredential;
    }

    void verificationFailed(FirebaseAuthException error) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
      );
      msgToast("Something went Wrong. Try again!");
      _handleError(error);
    }

    void codeSent(String verificationId, code) {
      if (fname != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OTPScreen(
                  fname: fname,
                  lname: lname,
                  mobile: phone,
                  username: username)),
        );
      }
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OTPScreen()),
      );
      _verificationId = verificationId;
      _code = code;
    }

    void codeAutoRetrievalTimeout(String verificationId) {}

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(milliseconds: 10000),
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  Future<int> submitOTP(String otp) async {
    String smsCode = otp.toString().trim();
    _phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: _verificationId!, smsCode: smsCode);

    int flag = 0;
    try {
      await FirebaseAuth.instance
          .signInWithCredential(_phoneAuthCredential!)
          .then((UserCredential authRes) {
        firebaseUser = authRes.user!;
        if (authRes.additionalUserInfo!.isNewUser) {
          // new user
          return 1;
        } else {
          // existing user
          return 0;
        }
      }).catchError((e) {
        flag = 1;
        _handleError(e);
      });
      if (flag == 0)
        return 0;
      else
        return -1;
    } catch (e) {
      _handleError(e);
      return -1;
    }
  }

  void displayUser() {
    // print(firebaseUser.toString());
  }
}
