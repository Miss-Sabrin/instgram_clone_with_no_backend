import 'package:flutter/material.dart';
import 'package:instagram/pages/homepage.dart';
import 'package:instagram/widgets/search_tap.dart';
import 'package:instagram/widgets/search_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'instagram',
      theme: ThemeData.dark(),
      home:MyHomePage() 
     //home: TapSearch(),
     //home: Question(),
    );
  }
}