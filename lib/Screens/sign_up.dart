import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dilvery/Screens/home.dart';
import 'package:dilvery/Screens/sign_in/login.dart';
import 'package:dilvery/Screens/vwerifyinf_email.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../const.dart';
import '../widget/text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool loading = false;
  var user = FirebaseAuth.instance.currentUser?.uid;
  Color blue = const Color(0xff8cccff);
  String countryDial = "+962";

  String? _selectedVal;
  var formKey = GlobalKey<FormState>();
  TextEditingController userName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool showSpinner = false;

  double screenHeight = 0;
  double screenWidth = 0;
  double bottom = 0;

  // saveSignIn(bool signIn) async {
  //   var prefs = await SharedPreferences.getInstance();
  //   prefs.setBool('signIn', signIn);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(height: 50),
          // 4%
          Text("Register Account    ",
              style: headingStyle, textAlign: TextAlign.center),
          const SizedBox(height: 5),
          const Text(
            "Complete your details or continue \nwith social media",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          // Container(
          //   margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          //   child: TextField(
          //     controller: userName,
          //     keyboardType: TextInputType.text,
          //     decoration: const InputDecoration(
          //         border: OutlineInputBorder(),
          //         hintText: "Entar your name",
          //         label: Text("Name")),
          //   ),
          // ),
          const SizedBox(
            height: 30,
          ),

          TextFieldWidget(
              text: " UserName",
              icon: Icons.person_outline,
              isPasswordType: false,
              controller: userName),
          const SizedBox(height: 20),
          TextFieldWidget(

              text: " Email",
              icon: Icons.email,
              isPasswordType: false,
              controller: email),
          const SizedBox(height: 20),
          TextFieldWidget(
              text: " Phone",
              icon: Icons.phone,
              isPasswordType: false,
              controller: phoneNumber),
          const SizedBox(height: 20),
          TextFieldWidget(
              text: " Password",
              icon: Icons.lock_outline,
              isPasswordType: true,
              controller: password),












           const SizedBox(
            height: 30,
          ),
          loading
              ? const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ))
              :
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: MaterialButton(
              height: 58,
              minWidth: 340,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              onPressed: () {
                register();},
              color: Color(0xFFFF7643),
              child: const Text(
                "Sign Up",
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
             // margin: EdgeInsets.fromLTRB(70, 0, 20, 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  child: const Text(
                    " have an account? Sign IN",
                    style: TextStyle(color: Color(0xFFFF7643)),
                  ))),
        ],
      ),

      // SizedBox(height: 20,),
      // TextField(
      //   controller: password,
      //
      //
       );

  }
  void register() {
    print(_selectedVal);
    if (userName.text.isNotEmpty &&
        password.text.isNotEmpty &&
        phoneNumber.text.isNotEmpty ) {

      if (phoneNumber.text.length == 10) {
        if (password.text.length >= 6 || confirmPassword.text.length >= 6) {
          setState(() {
            loading = true;
          });
          FirebaseAuth.instance
              .createUserWithEmailAndPassword(
              email: email.text, password: password.text)
              .then((value) {
            print(value.user?.uid);
            print('--------------------------------');
            FirebaseFirestore.instance
                .collection('Users')
                .doc(value.user?.uid)
                .set({
              "Id": value.user?.uid,
              "Username": userName.text.toString(),
              'Email': email.text.toString(),
              'Phone_number': phoneNumber.text.toString(),


            });
          }).then((value) {
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Verifying_Email(),))
;
            setState(() {
              loading = false;
            });
          });
        } else {
          Fluttertoast.showToast(
            msg: "Your must be more than 6 character",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.SNACKBAR,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 22.0,
          );
        }
      } else {
        Fluttertoast.showToast(
          msg: "Your phone must Jordanian number and 10 digits ",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor:  Colors.red,
          textColor: Colors.white,
          fontSize: 22.0,
        );
      }

    } else {
      Fluttertoast.showToast(
        msg: "Confirm your information",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor:  Colors.red,
        textColor: Colors.white,
        fontSize: 22.0,
      );
    }
  }
}
