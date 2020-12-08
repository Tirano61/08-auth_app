import 'package:google_sign_in/google_sign_in.dart';



class GoogleSignInService{


  static GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  static Future<GoogleSignInAccount> signinWithGoogle() async{

    try {
      
      final GoogleSignInAccount  acount = await _googleSignIn.signIn();

      final googleKey = await acount.authentication;
      print(googleKey.idToken);

      // TODO : llamar un servicio rest a nuestro backend

      print(acount);

      return acount;

    } catch (e) {
      print('error goolgle');
      return null;
    }
  }

  static Future signOut() async{

    await _googleSignIn.signOut();

  }

}