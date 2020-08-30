import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:veciapi/src/models/userModel.dart';

class AuthProvider {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _google = GoogleSignIn();

/*Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
   //   await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );
*/

/*void signOutGoogle() async{
  await googleSignIn.signOut();

  print("User Sign Out");
}

*/
}
