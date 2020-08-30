import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/Signup/components/body.dart';

class SignUpPage extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
