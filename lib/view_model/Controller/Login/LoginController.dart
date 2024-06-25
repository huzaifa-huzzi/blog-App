import 'package:blog_app/Routes/Routes_name.dart';
import 'package:blog_app/Utils/Utils.dart';
import 'package:blog_app/view_model/Services/SessionManager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  // Firebase Authentication
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref().child('user');



       //for Controllers
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

      //for the Focusing
 final emailFocus = FocusNode().obs;
 final passwordFocus = FocusNode().obs;

      // for loading
 RxBool loading = false.obs;

 // All Functions

 void loginFtn(String email,String password,BuildContext context)async{
    loading.value = true;

    try{
      await auth.signInWithEmailAndPassword(email: email, password: password).then((value){
        SessionManager().userId = value.user!.uid.toString();
        Get.toNamed(RouteName.homeScreen);
        Utils.snackBar('Login', 'Login Successful');
        loading.value = false;
        ref.child(value.user!.uid.toString()).set({
             'uid':value.user!.uid.toString(),
              'email':value.user!.email.toString(),
              'returnSecureToken':true,

        }).then((value){
          Utils.snackBar('User', 'User Authenticated');
          loading.value = false;

        }).onError((error,stackTrace){
          Utils.snackBar('Error While Authentication', error.toString());
          loading.value = false;
        });

      });


    }catch(e){
      Utils.snackBar('Error', e.toString());
      loading.value = false;
    }

 }




}