import 'package:flutter/material.dart';
import 'package:veciapi/constants.dart';
import 'package:veciapi/routes.dart';
import 'package:veciapi/src/ui_cliente/Screens/categories/categories_page.dart';
//import 'package:veciapi/src/ui_cliente/Screens/splash/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita la estampilla del debug
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: DetailsCateogriesPage(),
      // We use routeName so that we dont need to remember the name
      initialRoute: CategoriesPage.routeName,
      //initialRoute: WelcomePage.routeName,
      routes: routes,
    );
  }
}
