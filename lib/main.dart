import 'package:flutter/material.dart';
import 'package:instagram/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LOGIN",
      debugShowCheckedModeBanner: false,
      home: sign_up(),
    );
  }
}
