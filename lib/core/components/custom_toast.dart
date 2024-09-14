  import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showCustomToaster(String message, {bool isError = true}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 14.0);
  }