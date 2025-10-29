import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget {
   TextFieldWidget( {Key? key,
    this.text,

    required this.icon,
    required this.controller,
    required this.isPasswordType,})
      : super(key: key);
  late  String? text;

  final IconData icon;
  final TextEditingController controller;
  final bool isPasswordType;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: TextFormField(
        controller: controller,
        onSaved: (val){
          text=val;
        },

        obscureText: isPasswordType,
        //keyboardType: textInputType,
        enableSuggestions: !isPasswordType,
        autocorrect: !isPasswordType,

        keyboardType: isPasswordType
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        decoration:  InputDecoration(
            hintText: text,

            border: const OutlineInputBorder(

            ),

            label:Text(text!)),
      ),
    );
  }
}
