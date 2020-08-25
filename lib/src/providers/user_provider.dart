import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:veciapi/src/models/user.dart';

class UserProvider {
  final String _firebaseToken = 'AIzaSyAZFNPu0gBfc6wSwF6WAjbTtUEStlcHaJE';

  Future newUser(String email, String password) async {
    final authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true
    };

    final resp = await http.post(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_firebaseToken',
        body: json.encode(authData));
  }
  /* final String _url = 'https://veciapi.firebaseio.com';

  Future<bool> crearUsuario(UserModel user) async {
    final Url = '$_url/user';

    final resp = await http.post(url, body: userModelToJson(user));

    final decodeData = json.decode(resp.body);

    print(decodeData);

    return true;
  }*/
}
