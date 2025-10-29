import 'package:dilvery/Screens/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../btm_nav_bar.dart';
import '../../widget/text_field.dart';
import '../forget.dart';
import '../home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
          children: [
           const SizedBox(
              height: 90,
            ),
            const Text(
              "Welcome Back\n",textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: (28),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Sign in with your email and password  ",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50,),
            TextFieldWidget(

                text: " Email",
                icon: Icons.email,
                isPasswordType: false,
                controller: _emailTextController),
            const SizedBox(height: 20),
            TextFieldWidget(
                text: " Password",
                icon: Icons.lock_outline,
                isPasswordType: true,
                controller: _passwordTextController),

            Container(
                margin: const EdgeInsets.only(left: 250),
                child: TextButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyPhone()));},
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(color: Color(0xFFFF7643)),
                    ))),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: MaterialButton(
                height: 58,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20)),
                onPressed: () {FirebaseAuth.instance
        .signInWithEmailAndPassword(
    email: _emailTextController.text,
    password: _passwordTextController.text)
        .then((value) {
    // saveSignIn(true);
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => const BottomBarScreen()));
    }).onError((error, stackTrace) {
    Fluttertoast.showToast(
    msg: "Email OR password not correct",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.SNACKBAR,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 22.0,
    );
    });
    },
                color: const Color(0xFFFF7643),


                child: const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
             //   margin: EdgeInsets.fromLTRB(70, 0, 20, 10),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: const Text(
                      "Dont have new account? Sign up",
                      style: TextStyle(color: Color(0xFFFF7643)),
                    ))),
          ],
        ),

      // SizedBox(height: 20,),
      // TextField(
      //   controller: password,
      //
      // )
    );
  }
}
