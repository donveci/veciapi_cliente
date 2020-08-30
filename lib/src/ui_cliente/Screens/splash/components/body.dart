import 'package:flutter/material.dart';
import 'package:veciapi/constants.dart';
import 'package:veciapi/src/ui_cliente/Screens/Login/loginPage.dart';
import 'package:veciapi/src/ui_cliente/Screens/splash/components/splash_content.dart';
import 'package:veciapi/src/ui_cliente/components/rounded_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Bienvenidos a Veciapi, Vamos veci que vas a Pedir!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Ayudamos a conectarte con el tendero/",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "para que no tengas que salir de casa",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  // horizontal: getProportionateScreenWidth(20)
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    RoundedButton(
                      text: "Continuar",
                      press: () {
                        Navigator.pushNamed(context, LoginPage.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
