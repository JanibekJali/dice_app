import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../widgets/dice_widget.dart';

class DicePageContent extends StatelessWidget {
  const DicePageContent({
    Key key,
    @required this.onTap,
    @required this.leftNumber,
    @required this.rightNumber,
  }) : super(key: key);
  final VoidCallback onTap;
  final int leftNumber;
  final int rightNumber;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          DiceWidget(
            onTap: onTap,
            diceNumber: leftNumber,
          ),
          const SizedBox(
            width: 24.0,
          ),
          DiceWidget(
            onTap: onTap,
            diceNumber: rightNumber,
          ),
        ],
      ),
    );
  }
}
