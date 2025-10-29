import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function function;

  const PrimaryButton({Key? key, required this.text, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return  Container(
        margin: const EdgeInsets.symmetric(
            vertical: 10),
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius:
          BorderRadius.circular(29),
          child: ElevatedButton(

            onPressed: () {
              function();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor:    Color(0xffE57C23),

                padding:
                const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20),
                textStyle: const TextStyle(
                    letterSpacing: 2,
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans')),
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17),
            ),
          ),
        ) );
  }
}
