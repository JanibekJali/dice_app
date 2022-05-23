import 'package:flutter/material.dart';

import '../constants/colors/app_colors.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    Key key,
    @required this.onTap,
    @required this.diceNumber,
  });

  final VoidCallback onTap;
  final int diceNumber;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: onTap,
          child: Image.asset(
            'assets/images/dice_$diceNumber.png',
            height: 190.0,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
