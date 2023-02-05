import 'package:flutter/material.dart';
import 'homepage.dart';

//import 'package:google_sign_in/google_sign_in.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  // bool _isLoggedIn = false;
  // late GoogleSignInAccount _userObj;
  // GoogleSignIn? _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      color: Colors.black,
      //child: _isLoggedIn
      //? Homepage():
      child: Center(
          child: Column(
        children: [
          SizedBox(
            height: 190,
          ),
          Container(
            child: Image(
              image: AssetImage("Images/logo1.png"),
              height: 310,
            ),
            //height: 100,
            //color: Colors.red,
          ),
          SizedBox(
            height: 80,
          ),
          OutlinedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Homepage()));
              print("Login pressed");
            },
            // onPressed: ()                             //to  implement google authentication using firebase
            // {
            //   print("Login pressed");
            //   _googleSignIn?.signIn().then((userData) {
            //     setState(() {
            //       _isLoggedIn = true;
            //       _userObj = userData!;
            //     });
            //   }).catchError((e){
            //     print(e);
            //   });
            // },
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("Images/logo_0.jpg"),
                      height: 35.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                          ),
                        ))
                  ],
                )),
          ),
        ],
      )),
    ));
  }
}
