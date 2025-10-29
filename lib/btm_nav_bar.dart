import 'package:badges/badges.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import 'Screens/home.dart';
import 'Screens/order.dart';
import 'Screens/sign_in/login.dart';
import 'Screens/profile.dart';
import 'Screens/sign_up.dart';



class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [

    {
      'page': const HomePage(),
      'title': 'Home Screen',
    },

    {
      'page': const order(),
      'title': ' Order',
    },
    {
      'page': const UserScreen(),
      'title': 'user Screen',
    },];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.transparent,
          selectedIndex: _selectedIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _selectedIndex = index),
          // bottomNavigationBar: BottomNavigationBar(
          //   backgroundColor: color,
          //   selectedItemColor: Colors.blue,
          //   type: BottomNavigationBarType.shifting,
          //   unselectedItemColor: _isDark?Colors.white:Colors.black,
          //   currentIndex: _selectedIndex,
          //   onTap: (value) {
          //     setState((){
          //     _selectedIndex=value;
          //   });},
          items: [BottomNavyBarItem(inactiveColor: Colors.black,activeColor: Color(0xff53B175),
              icon:        Icon(_selectedIndex == 0 ? IconlyBold.home : IconlyLight.home), title:Text("Home") ),
            BottomNavyBarItem(inactiveColor: Colors.black,activeColor:  Color(0xffF8A44C),
            //   //   icon: Consumer<CartProvider>(builder: (context, myCart, child) {
            //   // return Badge(
            //   //   position: BadgePosition.topEnd(top: -7, end: -7),
            //   //   badgeContent:
            //   //   TextWidget(
            //   //       text: myCart.getCartItems.length.toString(),
            //   //       color: Colors.white,
            //   //       textSize: 15),
            //     child: Icon(
            //         _selectedIndex == 1 ? IconlyBold.buy : IconlyLight.buy),);
            // }),
              title:Text("Cart"),
           icon: Icon(
           _selectedIndex == 1 ? IconlyBold.buy : IconlyLight.buy),),


            BottomNavyBarItem(activeColor:   const Color(0xffF7A593),inactiveColor: Colors.black,icon: Icon(
                _selectedIndex == 2? IconlyBold.user2 : IconlyLight.user2),
              title:Text( "User"),)

          ],

        ),
        body: _pages[_selectedIndex]['page']
    );
  }}
