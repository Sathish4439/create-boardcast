import 'package:broadcast/pages/homepage.dart';
import 'package:broadcast/pages/responsive/mobilepage.dart';
import 'package:flutter/material.dart';

class Responsivepage extends StatelessWidget {
  final Widget mobilepage;
  final Widget webpage;

  const Responsivepage({Key? key, required this.mobilepage, required this.webpage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobilepage; 
      } else {
        return webpage;
      }
    });
  }
}
