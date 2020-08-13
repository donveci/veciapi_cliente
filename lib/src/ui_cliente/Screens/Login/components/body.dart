import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/Signup/signupPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/Login/components/background.dart';
import 'package:veciapi/src/ui_cliente/Screens/Login/components/or_divider.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_input_field.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_password_field.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_button.dart';
import 'package:veciapi/src/ui_cliente/components/already_have_an_account_acheck.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            /* SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),*/
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            OrDivider(), //aca escribo el text  o de olvidar contraseña
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
