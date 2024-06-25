import 'package:blog_app/Resources/Color/colors.dart';
import 'package:blog_app/Resources/Components/TextInputField/InputField.dart';
import 'package:blog_app/Utils/Utils.dart';
import 'package:blog_app/view_model/Controller/Login/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

     final controller = Get.put(LoginController());

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
         appBar: AppBar(
           title: Text('Login Screen'.tr,style:GoogleFonts.lato(
        textStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColor.whiteColor,
    ),),),
           centerTitle: true,
           automaticallyImplyLeading: false,
           backgroundColor: AppColor.pinkColor,
         ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                  child: Column(
                    children: [
                      InputField(myController:controller.emailController.value, focusNode: controller.emailFocus.value, onFieldSubmitted: (value){

                      }, obsecureText: false, hint:'Em_ail'.tr , keyboardType: TextInputType.text, onValidator: (value){
                        if(value!.isEmpty){
                          Utils.snackBar('Em_ail'.tr, '_email'.tr);
                        }
                      }, icon:Icons.email),
                      SizedBox(height: height * .02,),
                      InputField(myController: controller.passwordController.value, focusNode: controller.passwordFocus.value, onFieldSubmitted: (value){}, obsecureText: true, hint: 'pass_word'.tr, keyboardType: TextInputType.number, onValidator: (value){
                        if(value!.isEmpty){
                          Utils.snackBar('pass_word'.tr, '_email'.tr);
                        }
                      }, icon: Icons.lock)

                    ],
                  )

              )

            ],
          ),
        ),
    );
  }
}
