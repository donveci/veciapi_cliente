import 'package:flutter/services.dart' show rootBundle;

class _CategoriesProvider {
  List<dynamic> opciones = [];

  _CategoriesProvider() {
    cargarData();
  }

  cargarData() {
    rootBundle
        .loadString('data_json/categories_pts.json')
        .then((data) => print(data));
  }
}

final CategoriesProvider = new _CategoriesProvider();
