// import 'dart:ui';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  MyButton({super.key,
  required this.text ,
  required this.onPressed,
  required this.color
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: color
      ),
    );
  }
}