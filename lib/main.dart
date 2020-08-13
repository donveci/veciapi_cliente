import 'package:flutter/material.dart';
import 'package:veciapi/constants.dart';
import 'package:veciapi/src/ui_cliente/Screens/Welcome/welcomePage.dart';
//import 'package:veciapi/src/ui_cliente/Screens/Recover_pass/recoverPassPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita la estampilla del debug
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
      // home: RecoverPassPage(),
    );
  }
}
