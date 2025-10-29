import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage image = const AssetImage('assets/dd (2).png');
    Image Header = Image(image: image);
    return Container(
      child: Header,
    );
  }}