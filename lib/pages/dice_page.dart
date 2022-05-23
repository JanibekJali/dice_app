import 'dart:developer';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/textStyle/app_text_style.dart';
import 'package:dice_app/data/getx_data/controller/dice_controller.dart';
import 'package:dice_app/data/repositories/math_repo.dart';
import 'package:dice_app/data/services/math_services.dart';
import 'package:dice_app/widgets/dice_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/dice_page_content.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftnumber = 4;
  int _rightNumber = 1;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    count++;
    log('Build ==> $count');
    return Scaffold(
      backgroundColor: AppColors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dice App $count',
          style: AppTextStyle.appBarTitle,
        ),
        backgroundColor: AppColors.red,
        elevation: 0,
      ),
      body: DicePageContent(
          onTap: (() => _getRandomNumber()),
          leftNumber: _leftnumber,
          rightNumber: _rightNumber),
    );
  }

  void _getRandomNumber() {
    _leftnumber = MathRepo.getRandomNumber();
    _rightNumber = MathService.getRandomNumber();
    setState(() {});
  }

  // void baskandaOzgort() {
  //   Random random = Random();
  //   setState(() {
  //     solJak = random.nextInt(6) + 1;
  //     onjak = random.nextInt(6) + 1;
  //   });
  // }
}
// OOP - Object Oriented programming 
// OOP - Obyektno Orientirovannoe Programmirovanie

/// Design Pattern
// MVC - Model View Controller
// MVVM - Model View View Controller
// MVI - Model View Intent - bloc

// Business Logic - methods, functions