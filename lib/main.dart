import 'package:auth_app/services/google_signin_services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('AuthApp Google - Apple'),
          actions: [
            IconButton(
              icon: Icon(FontAwesomeIcons.doorOpen), 
              onPressed: (){
                GoogleSignInService.signOut();
              }
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                MaterialButton(
                  splashColor: Colors.transparent,
                  minWidth: double.infinity,
                  height: 40,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.google, color: Colors.white,),
                      Text('   Sign in with Google', style: TextStyle(color: Colors.white),),

                    ],
                  ),
                  onPressed: (){
                    GoogleSignInService.signinWithGoogle();
                  }
                )

              ],
            ),
          
          ),
        )
      ),
    );
  }
}