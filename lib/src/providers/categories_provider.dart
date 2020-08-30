import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:veciapi/src/models/categoriesModel.dart';

class CategoriesProvider {
  // url de  firebase de mi Base de datos
  final String _urlDB = 'https://veciapi-e6ad9.firebaseio.com';

//Metodo para crear la categoria
  Future<bool> crearCategory(CategoriesModel category) async {
    //url de firebase donde se encuentra mi coleccion
    final urlCategory = '$_urlDB/categories.json';
    final resp =
        await http.post(urlCategory, body: categoryModelToJson(category));

    final decodeData = json.decode(resp.body);

    print(decodeData);
    return true;
  }

  //Metodo para Editar la categoria
  Future<bool> updatedCategory(CategoriesModel category) async {
    //url de firebase donde se encuentra mi coleccion
    final urlCategory = '$_urlDB/categories/${category.id}.json';
    final resp =
        await http.put(urlCategory, body: categoryModelToJson(category));

    final decodeData = json.decode(resp.body);

    print(decodeData);
    return true;
  }

//Metodo que muestra el detalle de las Categorias
  Future<List<CategoriesModel>> cargarCategories() async {
    final urlCateogry = '$_urlDB/categories.json';
    final resp = await http.get(urlCateogry);
    final Map<String, dynamic> decodeData = json.decode(resp.body);
    final List<CategoriesModel> category = new List();
    if (decodeData == null) return [];

    decodeData.forEach((id, cat) {
      final categoryTemp = CategoriesModel.fromJson(cat);
      categoryTemp.id = id;
      category.add(categoryTemp);
    });
    print(category[0].id);
    return category;
  }

  //Metodo para Eliminar
  Future<int> deleteCategory(String id) async {
    final urlCategory = '$_urlDB/$id.json';
    final resp = await http.delete(urlCategory);

    print(resp.body);

    return 1;
  }
}
