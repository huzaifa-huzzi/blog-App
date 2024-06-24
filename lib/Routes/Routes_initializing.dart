



import 'package:blog_app/Routes/Routes_name.dart';
import 'package:blog_app/view/SplashScreen/splash_Screen.dart';
import 'package:get/get.dart';

class AppRoutes{

  static appRoutes() => [
    GetPage(name: RouteName.splashScreen, page: () =>const SplashScreen()),

  ];

}