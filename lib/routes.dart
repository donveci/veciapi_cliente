import 'package:flutter/widgets.dart';
import 'package:veciapi/src/ui_cliente/Screens/Login/loginPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/Recover_pass/recoverPassPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/Signup/signupPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/Welcome/welcomePage.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomePage.routeName: (context) => WelcomePage(), //SplashScreen
  //SignInScreen.routeName: (context) => ()
  RecoverPassPage.routeName: (context) => RecoverPassPage(),
  LoginPage.routeName: (context) => LoginPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
};
