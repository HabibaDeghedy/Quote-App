import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quote_app/core/utils/app_colors.dart';

class Constants{

  static void showErrorDialog ({required BuildContext context, required String msg}){

    showDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: Text(
            msg,
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
          actions: [
            TextButton(
              onPressed: ()=> Navigator.pop(context),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('OK'),
            ),
          ],
        ),
    );
  }

  static void showToast ({required String msg, Color? color, ToastGravity? gravity}){
    Fluttertoast.showToast(msg: '',
    toastLength: Toast.LENGTH_LONG,
    backgroundColor: color ?? AppColors.primary,
    gravity: gravity ?? ToastGravity.BOTTOM);
  }
}