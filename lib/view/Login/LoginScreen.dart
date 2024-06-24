import 'package:blog_app/Resources/Color/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
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

            ],
          ),
        ),
    );
  }
}
