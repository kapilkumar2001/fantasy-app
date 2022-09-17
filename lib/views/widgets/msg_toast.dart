import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void msgToast(String s) {
  Fluttertoast.showToast(
    msg: s,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    backgroundColor: Colors.red[900],
    textColor: Colors.white,
    fontSize: 16.0,
  );
}