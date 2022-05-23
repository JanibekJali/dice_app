import 'dart:developer';

import 'package:dice_app/data/getx_data/controller/dice_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colors/app_colors.dart';
import '../constants/textStyle/app_text_style.dart';
import '../widgets/dice_page_content.dart';

class DiceGetxPage extends StatelessWidget {
  DiceGetxPage({Key key}) : super(key: key);
  final DiceController _diceController = Get.put(DiceController());
  @override
  Widget build(BuildContext context) {
    log('Build ==> ${_diceController.count.value}');
    return Scaffold(
        backgroundColor: AppColors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dice App',
            style: AppTextStyle.appBarTitle,
          ),
          backgroundColor: AppColors.red,
          elevation: 0,
        ),
        body: Obx(() {
          return DicePageContent(
            onTap: () => _diceController.getRandomNumber(),
            leftNumber: _diceController.leftNumber.value,
            rightNumber: _diceController.rightNumber.value,
          );
        }));
  }
}
