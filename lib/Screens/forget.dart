

import 'package:dilvery/widget/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);
  static int? verfiy;

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryController = TextEditingController();

  TextEditingController email = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+20";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar
      (title: Text("Forget Password",style: TextStyle(color: Colors.black)),
    ),
      body:





       Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(
              //   'assets/forget.jpg',
              //   fit: BoxFit.fitWidth,
              //   width: 340,
              //   height: 240,
              // ),
              //   logoWidget('assets/images/forget.jpg'),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Email Verification",
                style: TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We need to register your Email without getting started!",
                style: TextStyle(
                  fontSize: 16,color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
       TextFieldWidget(  text: " Email",
           icon: Icons.email,
           isPasswordType: false,
           controller: email)
              ,const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: MaterialButton(
                  height: 58,
                  minWidth: 340,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)),
                  onPressed: () async {
                    FirebaseAuth.instance
                        .sendPasswordResetEmail(email: email.text);

                    print('*****************************');
                    print(AuthorizationStatus.authorized);
                    print('*****************************');
                    showDialog(context: context, builder: (context){

                      return const AlertDialog(content: Text("Password  reset link sent!Check your email"),);

                    });
                  },
                  color: Color(0xFFFF7643),
                  child: const Text(
                    "Send Email",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
          ),


    );
  }
}
