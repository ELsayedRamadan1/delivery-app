import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'location.dart';

class delivery_orderdetails extends StatelessWidget {
  const delivery_orderdetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

          return Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 310, 0),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back,size: 40,)),
                ),
                const Image(image: AssetImage('assets/wa.jpg',),height: 150,),

                Padding(padding: EdgeInsets.fromLTRB(60, 10, 0, 10),
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF7643),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 15),
                        const Icon(Icons.person,size: 50,color: Colors.black,),
                        Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Column(
                            children: const [
                              Text("Ahmed Ali",style: TextStyle(color: Colors.black),),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Seller",style: TextStyle(color: Colors.black))
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("|",style: TextStyle(fontSize: 30,color: Colors.black),),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.alarm,color: Colors.black,),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Sunday 15/9/2021",style: TextStyle(fontSize: 13,color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text("Casio watch 55 waterproof",style: TextStyle(fontSize: 30, color:
                        Color(0xFFFF7643)),),
                      ),

                      Expanded(
                        flex: 1,
                        child: Text("600 l.e",style: TextStyle(fontSize: 30, color: Color(0xFFFF7643)),),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Row(
                    children: const [
                      Icon(Icons.star , color: Color(0XFFC2C728),size: 20,),
                      Icon(Icons.star , color: Color(0XFFC2C728),size: 20,),
                      Icon(Icons.star , color: Color(0XFFC2C728),size: 20,),
                      Icon(Icons.star , color: Color(0XFFC2C728),size: 20,),
                      Icon(Icons.star , color: Color(0XFFC2C728),size: 20,),
                      Text("4.0",style: TextStyle(fontSize: 20, color: Color(0xFFFF7643)),),
                      Text("(50 Review)",style: TextStyle(fontSize: 20 , color: Color(0xFFFF7643)),),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(5, 5, 220, 10),
                  child: Text("Location",style: TextStyle(fontSize: 30,color: Color(0xFFFF7643)),),
                ),
                Row(
                  children: const [
                    SizedBox(width: 40,),
                    Icon(Icons.stop,color: Colors.white,size: 20,),
                    Text("From October, distinct 2, Street 10",style: TextStyle(fontSize: 15),)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(

                  children: [
                    const SizedBox(width: 40,),
                    const Icon(Icons.stop,color: Colors.deepOrangeAccent,size: 20,),
                    const Text("From October, distinct 2, Street 10",style: TextStyle(fontSize: 15),)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10,0 ),
                  child: Container(
                    height: 80,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFF7643),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))

                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child:Padding(
                              padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                              child: Column(
                                children: const [
                                  Text(("100"),style: TextStyle(fontSize: 20,color: Colors.black),),
                                  Text(('Commission'),style: TextStyle(fontSize: 14,color: Colors.black)),
                                ],
                              ),
                            )
                        ),
                        const Text("|",style: TextStyle(fontSize: 50,color:Colors.black),),
                        Expanded(
                            flex: 1,
                            child:Padding(
                              padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                              child: Column(
                                children: const [
                                  Icon(Icons.directions_bike_outlined,color: Colors.black,size: 25,),
                                  Text(('Commission'),style: TextStyle(fontSize: 14,color: Colors.black)),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.fromLTRB(5, 5, 220, 10),
                  child: Text("Notes",style: TextStyle(fontSize: 30,color: Color(0xFFFF7643)),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    height: 100,
                    width: 300,
                    child: const Text("customer Delivery :01555555526 delivery from 3:9 pm sfvdfvfvsdv ",style:
                    TextStyle(fontSize: 20),),
                  ),
                ),
                const Center(
                  child: Text("Are you want to take this code?",style: TextStyle(fontSize: 20),),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [

                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (context)=>AlertDialog(
                              backgroundColor:  Colors.white,
                              title: const Text("Thank you for chose offer"),
                              actions: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                            context, MaterialPageRoute(builder: (context)=> location())
                                        );
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 100,

                                        child: const Center(
                                          child: Text("My order",style: TextStyle(color: Colors.black,fontSize: 20),),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 130,

                                      child: const Center(
                                        child: Text("chose another order",style: TextStyle(color: Colors.black,fontSize: 20),),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                )
                              ],

                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFF7643),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Center(
                          child: Text("approve",style: TextStyle(fontSize: 25,color: Colors.white),),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Center(
                          child: Text("Cansel",style: TextStyle(fontSize: 25,color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          );

  }
}
