

import 'dart:async';

import 'package:blog_app/Routes/Routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashServices{

  void isLogin(BuildContext context){
    Timer(const Duration(seconds: 3), (){
      Get.toNamed(RouteName.loginScreen);
    });
  }

}