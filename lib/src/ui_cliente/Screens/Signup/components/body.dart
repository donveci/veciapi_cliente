import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/Login/loginPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/Signup/components/background.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_input_field.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_password_field.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_button.dart';
import 'package:veciapi/src/ui_cliente/components/already_have_an_account_acheck.dart';

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
              "Registro",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            /*SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),*/
            RoundedInputField(
              hintText: "Correo",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Registrarse",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
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
