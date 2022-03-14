import 'package:flutter/material.dart';

class Misal extends StatefulWidget {
  const Misal({Key key}) : super(key: key);

  @override
  _MisalState createState() => _MisalState();
}

class _MisalState extends State<Misal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // flex: 1,
          child: Container(
            color: Colors.purple,
            // height: 200.0,
          ),
        ),
        Container(
          height: 25.0,
        ),
        Expanded(
          // flex: 1,
          child: Container(
            color: Colors.yellow,
            // height: 10.0,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Expanded(
          // flex: 1,
          child: Container(
            color: Colors.green,
            // height: 400.0,
          ),
        ),
      ],
    );
  }
}
