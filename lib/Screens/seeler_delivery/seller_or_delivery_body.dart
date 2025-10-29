import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../order.dart';
import '../sign_in/login.dart';

class seller_or_delivery_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
     SingleChildScrollView(
        child: Column(
          children: <Widget>[

            const SizedBox(
              height: 20.0,
            ),

Text("Please choose your type",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20.0,
            ),
                  SizedBox(
                    height: 70,
                    width: 250,
                    child: ElevatedButton(
    style: ButtonStyle(
    backgroundColor:   MaterialStatePropertyAll(  const Color.fromRGBO(238, 75, 42, 1),)),
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> order()));
                        },
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(25)),
                        child: const Text('Seller ',
                            style: TextStyle(
                                color: Color.fromRGBO(234, 231, 222, 1),
                                fontSize: 30))),
                  )
               ,

SizedBox(height: 20,),
                  SizedBox(
                    height: 70,
                    width: 250,
                    child: ElevatedButton(
                    style: ButtonStyle(
    backgroundColor:   MaterialStatePropertyAll(  Colors.white,)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));


                        },
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(25)),
                        child: const Text('Delivery ',
                            style: TextStyle(
                                color: Color.fromRGBO(100, 50, 77, 1),
                                fontSize: 30))),
                  )
                ],
              ),



    );
  }
}