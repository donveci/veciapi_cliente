import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/Login/loginPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/Signup/components/background.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_input_field.dart';
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
              "Recover Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            /*SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),*/
            RoundedInputField(
              hintText: "Su correo",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Enviar",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
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
