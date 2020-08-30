import 'package:flutter/widgets.dart';
import 'package:veciapi/src/ui_cliente/Screens/Login/loginPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/Recover_pass/recoverPassPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/Signup/signupPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/Welcome/welcomePage.dart';
import 'package:veciapi/src/ui_cliente/Screens/categories/categories_page.dart';
import 'package:veciapi/src/ui_cliente/Screens/splash/splash_page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  WelcomePage.routeName: (context) => WelcomePage(), //SplashScreen
  LoginPage.routeName: (context) => LoginPage(),
  //SignInScreen.routeName: (context) => ()
  RecoverPassPage.routeName: (context) => RecoverPassPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  CategoriesPage.routeName: (context) => CategoriesPage(),
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
};
