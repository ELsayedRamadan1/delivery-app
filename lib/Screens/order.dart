import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../btm_nav_bar.dart';

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  String  type ='';

  @override
  Widget build(BuildContext context) {
    String? gender;

          return Scaffold(appBar: AppBar(title: Text("Add Product",style: TextStyle(color: Colors.black)),),
            body:  ListView(
                children: [
                const SizedBox(
                height: 20,
              ),

              const SizedBox(
                  height: 5,

              ),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child:TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "product name",
                    hintText: "enter your name",
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child:TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Location",
                    hintText: "From",
                  ),
                ),
              ),  SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child:TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Location",
                    hintText: "To",
                  ),
                ),
              ),  SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child:TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    labelText: "Delivery Time",
                    hintText: "DD/MM/YYYY",
                  ),
                ),

              ),  SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child:TextFormField(

                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Price",
                    hintText: "500 L.E",
                  ),
                ),
              ),  SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child:TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Commision",
                    hintText: "100 L.E",
                  ),
                ),
              ),  SizedBox(height: 20,),



              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child:TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Note",
                    hintText: "phone number is 015332984",
                  ),
                ),
              ),  SizedBox(height: 20,),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 15, 0),
                child:Text("Type of Delivery",style: TextStyle(color: Colors.black),
              ),),

                Row(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children:  [

                      Radio(
                        //  title: Text("bike"),
                          value: "bike",
                          groupValue: type,
                          onChanged: (value){
                            setState(() {
                              type= value!;
                            },
                            );}),

                        Chip(

                          avatar: CircleAvatar(
                            child: Icon(Icons.directions_bike_outlined),
                            backgroundColor: Color(0xFFFF7643),
                          ),
                          label: Text("bike",style: TextStyle(color: Colors.white)),
                          backgroundColor: Color(0xFFFF7643),
                        ),

                      Radio(

                          value: "car",
                          groupValue: type,
                          onChanged: (value){
                            setState(() {
                              type= value!;
                            },
                            );}),

                        Chip(

                          avatar: CircleAvatar(
                            child: Icon(Icons.directions_car),
                            backgroundColor: Color(0xFFFF7643),
                          ),
                          label: Text("Car",style: TextStyle(color: Colors.white)),
                          backgroundColor: Color(0xFFFF7643),
                        ),
                      Radio(

                          value: "personal",
                          groupValue: type,
                          onChanged: (value){
                            setState(() {
                              type= value!;
                            },
                            );}),
                       Chip(

                          avatar: CircleAvatar(
                            child: Icon(Icons.person),
                            backgroundColor: Color(0xFFFF7643),
                          ),
                          label: Text("personal",style: TextStyle(color: Colors.white),),
                          backgroundColor: Color(0xFFFF7643),
                        ),

                    ],
                  ),

              const SizedBox(
                height: 15,
              ),

            Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                child:GestureDetector(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                        70,
                        0,
                        70,
                        5
                    ),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomBarScreen()));
                        },
                        child: Container(
                            height: 50,
                            width: 35,

                            color:Color(0xFFFF7643),
                        child: const Center(
                          child: Text("Save",style: TextStyle(color: Colors.white, fontSize: 20),),
                        )
                    ),
                  ),
                )
            ),
          ),
          const SizedBox(
          height: 20,
          ),
          ],
          ),

          );

  }
}