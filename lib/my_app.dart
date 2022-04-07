import 'package:angela_yu_practice/my_homepage.dart';
import 'package:angela_yu_practice/sign_up_screen.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Henna Place',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SignupScreen(),
    );
  }
}
