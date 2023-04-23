import 'package:flutter/material.dart';
import 'loginScreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'E-School App',
      debugShowCheckedModeBanner: false,
      home: loginScreen(),

    );
  }
}