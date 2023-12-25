import 'package:clean_arch/core/utils/app_colors.dart';
import 'package:clean_arch/core/utils/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
final supportedLanguages =[const Locale('ar'),const Locale('en')];
class Constants {
  static void showErrorDialog(
      {required BuildContext context, required String msg}) {
    showDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: Text(
                msg,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(AppStrings.ok),
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      textStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                )
              ],
            ));
  }

  static void showToast(
      {required String msg, Color? color,
      ToastGravity? gravity}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        backgroundColor: color ?? AppColors.primaryColor,
        gravity: gravity ?? ToastGravity.BOTTOM);
  }
}
