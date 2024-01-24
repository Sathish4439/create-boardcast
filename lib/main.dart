import 'package:broadcast/pages/homepage.dart';
import 'package:broadcast/pages/responsive/mobilepage.dart';
import 'package:broadcast/pages/responsive/responsivepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsivepage(mobilepage: Mobilepage(), webpage: Homepage()),
    );
  }
}
