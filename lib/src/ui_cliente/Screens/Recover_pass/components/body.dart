import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/Signup/components/background.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_input_field.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Recover Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            /*SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),*/
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Send Email",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
