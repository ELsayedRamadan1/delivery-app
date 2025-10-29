
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dilvery/Screens/sign_in/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import '../rate.dart';
import 'forget.dart';



class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  String name = '';
  String email = '';
  String phone = '';
  var user = FirebaseAuth.instance.currentUser?.uid;

  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return
      Container(
          width: double.infinity,

          padding: const EdgeInsets.only(top:50,left:20),
          child:ListView(children: [
            RichText(
              text:  TextSpan(
                text: 'Hi,  ',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),

                  )  ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
           email,

              // isTitle: true,
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            _listTiles(
              title: 'Name',
              subtitle: name,
              icon: IconlyLight.profile,
              onPressed: () async {
                await _showAddressDialog();
              },
              color:  Colors.black,
            ),
            _listTiles(
              title: 'Email',
              subtitle: email,
              icon:Icons.email,
              onPressed: () async {
                await _showAddressDialog();
              },
              color:  Colors.black,
            ),

            _listTiles(
              title: 'Phone Number',
              subtitle: phone,
              icon: Icons.phone,
              onPressed: () {
           //     Navigator.push(context, MaterialPageRoute(builder: (context) => const WishlistScreen(),));
                // GlobalMethods.navigateTo(
                //     ctx: context, routeName: WishlistScreen.routeName);
              },
             color: Colors.black,
            ),
            _listTiles(
              title: 'Rating',
              icon: IconlyLight.star,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Rate(),));
                // GlobalMethods.navigateTo(
                //     ctx: context, routeName: ViewedRecentlyScreen.routeName);
              },
         color: Colors.black,
            ),
            _listTiles(
              title: 'Forget password',
              icon: IconlyLight.unlock,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const MyPhone()),
                       );
              },
              color: Colors.black,
            ),

    _listTiles(
              title: 'Logout',
              icon: IconlyLight.logout,
              onPressed: () async {
    await FirebaseAuth.instance.signOut();

    Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(
    builder: (context) => const LoginScreen()),
    (route) => false);
    }, color: Colors.black,),



            // listTileAsRow(),


          ],));


  }
  Widget _listTiles({
    required IconData icon,
    required String title,
    String ? subtitle,
    required Function onPressed,
    required Color color,
  }){
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
        color: color,
        fontSize: 22,
        // isTitle: true,
        )),
      subtitle: Text(
   subtitle ?? "",style: TextStyle(
        color: color,
        fontSize: 18,
      )) ,
      leading: Icon(icon),
      trailing: const Icon(IconlyLight.arrowRight2),
      onTap: () {
        onPressed();
      },
    );
  }

  _showAddressDialog() {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: const Text("Update"),
        actions: [TextButton(onPressed: () {

        }, child: const Text("Update"))],
        content: const TextField(
          maxLines: 5,
          decoration: InputDecoration(hintText: "Your address"),
        ),
      );
    });
  }
  getData() async {
    print(user);
    print('*******************');
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(user)
        .get()
        .then((value) {
      setState(() {
        name = value['Username'];
        email = value['Email'];
        phone = value['Phone_number'];
      });
    });
  }
}






