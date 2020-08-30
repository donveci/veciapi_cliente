import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/splash/components/body.dart';

class SplashPage extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    //SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
