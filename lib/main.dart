import 'package:carros/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.indigo,
        accentColor: Colors.grey,
        primarySwatch: Colors.blue,

      ),
      home: LoginPage(),
    );
  }
}
