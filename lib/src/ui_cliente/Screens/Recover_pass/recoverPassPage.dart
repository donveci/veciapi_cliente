import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/Recover_pass/components/body.dart';

class RecoverPassPage extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
