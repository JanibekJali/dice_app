import 'package:dice_app/pages/dice_getx_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiceGetxPage(),
    );
  }
}

// UI - User Interface - Korunup turuuchu
// UX - User Experince - Kantip ishtetishti korsotup turuuchu
