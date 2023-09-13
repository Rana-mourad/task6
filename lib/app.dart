import 'package:flutter/material.dart';
import 'package:shrine/home.dart';
import 'package:shrine/login.dart';

class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => LoginPage(),
        '/': (BuildContext context) => HomePage(),
      },
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue,
        hintColor: Colors.orange,
      ),
    );
  }
}
