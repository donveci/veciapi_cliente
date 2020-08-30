import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/Login/components/body.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "/login_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
