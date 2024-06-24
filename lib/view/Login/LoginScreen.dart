import 'package:blog_app/Resources/Color/colors.dart';
import 'package:blog_app/Resources/Components/TextInputField/InputField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
            children: [
              Form(
                  child: Column(
                    children: [
                      InputField(myController: myController, focusNode: focusNode, onFieldSubmitted: onFieldSubmitted, obsecureText: obsecureText, hint: hint, keyboardType: keyboardType, onValidator: onValidator, icon: icon),
                      SizedBox(height: height * .02,),

                    ],
                  )

              )

            ],
          ),
        ),
    );
  }
}
