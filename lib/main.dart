import 'package:flutter/material.dart';
import 'package:flutter_pab1/models/candi_data.dart';
import 'package:flutter_pab1/screens/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: DetailScreen(candi: candiList[0]),
    );
  }
}
