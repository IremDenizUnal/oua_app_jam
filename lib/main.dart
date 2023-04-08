import 'package:flutter/material.dart';
import 'package:flutter_application_2/giris.dart';
import 'package:flutter_application_2/not_listesi.dart';
import 'package:flutter_application_2/paylasim.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: LoginScreen(),
    );
  }
}
