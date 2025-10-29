import 'dart:async';


import 'package:dilvery/Screens/seeler_delivery/seller_or_delivery_shape.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);
  @override
  _splashscreenState createState() => _splashscreenState();
}
class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  startTimer() async{
    var duration =const Duration(seconds: 6);
    return Timer(duration, route);
  }
  route(){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=> seller_or_delivery_shape()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(234, 231, 222, 1),
        // ignore: unnecessary_const
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            Image.asset(
            'assets/Untitled design (2).png',
            height: 300,
            width: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          const CircularProgressIndicator(
            backgroundColor: Color(0XFF64314D),
            strokeWidth: 1,
          )
          ],
        )),
    );
  }
}
