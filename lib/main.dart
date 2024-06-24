import 'package:blog_app/Resources/Languages/languages.dart';
import 'package:blog_app/Routes/Routes_initializing.dart';
import 'package:blog_app/view/SplashScreen/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'title'.tr,
      translations: Languages(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en','Us'),
      debugShowCheckedModeBanner: false,
      home:const  SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
