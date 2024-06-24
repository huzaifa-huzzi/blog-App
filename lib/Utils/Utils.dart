

import 'package:blog_app/Resources/Color/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils{

  // Focus for textFormField;
  static void fieldFocusChange(BuildContext context,FocusNode current,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  // toastMessage
static toastMessage(String message){
  Fluttertoast.showToast(
    msg: message,
    backgroundColor: AppColor.pinkColor

  );
}

//snackBar Message
 static snackBar(String title,String message){
  Get.snackbar(
    title,
    message,
    colorText: AppColor.whiteColor,
    backgroundColor: AppColor.pinkColor,
  );

 }




}