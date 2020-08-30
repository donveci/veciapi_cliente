import 'package:flutter/material.dart';
import 'package:veciapi/src/ui_cliente/Screens/categories/componentes/body.dart';

//import 'componentes/body.dart';

class CategoriesPage extends StatefulWidget {
  static String routeName = "/categories";
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        drawer:
            Drawer(child: Container() // Populate the Drawer in the next step.
                ),
        body: Body(),
      ),
    );
  }
}
