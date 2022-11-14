// import 'dart:ui';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  MyButton({super.key,
  required this.text ,
  required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}