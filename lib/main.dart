import 'dart:developer';

import 'package:dice_app/misal.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      // home: const Misal(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int onjak = 0;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int solJak = 4;
  int onjak = 1;
  //  0 = 1
  //  2 = 1
  // solJak  = random.nextInt(6) === 0  + 1 = 1
  // onJak  = 5 + 1 = 6
  // 0 + 1 = 1
  // 1 + 1 = 2
  // 2 + 1 = 3
  // 3 + 1 = 4
  // 4 + 1 = 5
  // 5 + 1 = 6
  //
  void baskandaOzgort() {
    Random random = Random();
    setState(() {
      solJak = random.nextInt(6) + 1;
      onjak = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Тапшырма 05',
          style: TextStyle(
            color: Color(0xff000000),
          ),
        ),
        backgroundColor: const Color(0xffFF5353),
        elevation: 0,
      ),
      body: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  // solJak = 2;
                  baskandaOzgort();
                  print('Sol Jak basildy ===> $solJak');
                  // log('Sol Jak basildy ===> $solJak');
                },
                child: Image.asset(
                  'assets/images/dice_$solJak.png',
                  height: 190.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 24.0,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // onjak = 5;
                  baskandaOzgort();
                  print('On jak basilduy ===> $onjak');
                },
                child: Image.asset(
                  'assets/images/dice_$onjak.png',
                  height: 190.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// UI - User Interface - Korunup turuuchu
// UX - User Experince - Kantip ishtetishti korsotup turuuchu
