import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        //appBar: AppBar(title: Text("Home Page",style: TextStyle(color: Colors.black)),backgroundColor:  Color.fromRGBO(234, 231, 222, 1),),
        body: ListView(children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text("Our Product",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.brown),
                  margin: EdgeInsets.all(10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(1),
                            child: Image.asset("assets/bag2.jpg")),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Gucci Bag",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Row(children: [
                              Text(
                                " perosnal ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Icon(Icons.timelapse_outlined,
                                  color: Colors.white),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "12/5/2021",
                                style: TextStyle(color: Colors.white),
                              )
                            ]),
                            SizedBox(
                              height: 9,
                            ),
                            Text("price: 300L.E",
                                style: TextStyle(color: Colors.white)),
                            SizedBox(
                              height: 9,
                            ),
                            Text("Comission: 60L.E",
                                style: TextStyle(color: Colors.white))
                          ],
                        )
                      ])),
             InkWell(onTap:  () => Navigator.push(
               context,
               MaterialPageRoute(
                   builder: (context) => const delivery_orderdetails()),
             ),
               child:  Container(
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff161d37)),
                  margin: EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(1),
                          child: Image.asset(
                            "assets/wa.jpg",
                          )),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Casio watch 55",
                            style:
                            TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Row(children: [
                            Text(
                              " bike ",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                            Icon(Icons.timelapse_outlined,
                                color: Colors.white),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "19/5/2021",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                          SizedBox(
                            height: 9,
                          ),
                          Text("price: 600L.E",
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            height: 9,
                          ),
                          Text("Comission: 60L.E",
                              style: TextStyle(color: Colors.white))
                        ],
                      )
                    ],
                  )),),
              Container(
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff606A47)),
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(1),
                          child: Image.asset("assets/camera.jpg")),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Camera",
                            style:
                            TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Row(children: [
                            Text(
                              " car ",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                            Icon(Icons.timelapse_outlined,
                                color: Colors.white),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "9/6/2021",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                          SizedBox(
                            height: 9,
                          ),
                          Text("price: 100L.E",
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            height: 9,
                          ),
                          Text("Comission: 60L.E",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  )),
              Container(
                  height: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffa0a2ec)),
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 1),
                          child: Image.asset(
                            "assets/hair.jpg",
                            height: 300,
                          )),
    SizedBox(
    width: 40,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height: 5,
    ),
    Text(
    "Baby leys",
    style:
    TextStyle(fontSize: 25, color: Colors.white),
    ),
    SizedBox(
    height: 9,
    ),
    Row(children: [
    Text(
    " car ",
    style: TextStyle(
    fontSize: 18, color: Colors.white),
    ),
    Icon(Icons.timelapse_outlined,
    color: Colors.white),
    SizedBox(
    height: 9,
    ),
    Text(
    "1/3/2021",
    style: TextStyle(color: Colors.white),
    )
    ]),
    SizedBox(
    height: 9,
    ),
    Text("price: 900L.E",
    style: TextStyle(color: Colors.white)),
    SizedBox(
    height: 9,
    ),
    Text("Comission: 60L.E",
    style: TextStyle(color: Colors.white))
    ],
    ),
            ]))]));
  }
}
