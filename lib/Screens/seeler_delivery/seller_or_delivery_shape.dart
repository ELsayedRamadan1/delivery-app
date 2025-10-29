import 'package:dilvery/Screens/seeler_delivery/seller_or_delivery_body.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../Header.dart';
class seller_or_delivery_shape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),  Center(
    child: Lottie.network("https://assets9.lottiefiles.com/packages/lf20_b1koyd9m.json"))
          ,  const SizedBox(
              height: 100,
            ),
            Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )),
                  child: seller_or_delivery_body(),
                ))
          ],
        ),

    );
  }

}