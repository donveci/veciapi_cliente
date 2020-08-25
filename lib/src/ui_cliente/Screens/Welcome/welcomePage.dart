import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/Welcome/components/body.dart';

class WelcomePage extends StatelessWidget {
  static String routeName = "/welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
