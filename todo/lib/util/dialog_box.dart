import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancel;

  DialogBox({super.key ,
  required this.controller ,
  required this.onCancel,
  required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[100],
      content: Container(
        height: 110,
        child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a new task',
                ),
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(text: 'Save', onPressed: onSaved),
                  SizedBox(width: 8,),
                  MyButton(text: 'Cancel', onPressed: onCancel),
                ],
              )
              
            ],
          )
      )
      ,
    );
  }
}