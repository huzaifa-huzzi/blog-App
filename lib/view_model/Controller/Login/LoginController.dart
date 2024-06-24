import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

       //for Controllers
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

      //for the Focusing
 final emailFocus = FocusNode().obs;
 final passwordFocus = FocusNode().obs;

      // for loading
 RxBool loading = false.obs;




}