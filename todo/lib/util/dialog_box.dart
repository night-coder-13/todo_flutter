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
      backgroundColor: Colors.white,
      content: Container(
        height: 125,
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
                  MyButton(text: 'Save', onPressed: onSaved , color: Colors.purple,),
                  SizedBox(width: 8,),
                  MyButton(text: 'Cancel', onPressed: onCancel , color: Colors.purple.shade400,),
                ],
              )
              
            ],
          )
      )
      ,
    );
  }
}
class DialogEdit extends StatelessWidget {
  final controller;
  Function(ValueGetter) onSaved;
  VoidCallback onCancel;

  DialogEdit({super.key ,
  required this.controller ,
  required this.onCancel,
  required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 125,
        child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Edit task',
                ),
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(text: 'Save', onPressed: onSaved(() => '') , color: Colors.purple,),
                  SizedBox(width: 8,),
                  MyButton(text: 'Cancel', onPressed: onCancel , color: Colors.purple.shade400,),
                ],
              )
              
            ],
          )
      )
      ,
    );
  }
}

class DialogDelete extends StatelessWidget {
  VoidCallback onDelete;
  VoidCallback onCancel;

  DialogDelete({super.key ,
    required this.onCancel,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
   return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 85,
        child: Column(
            children: [
              Text('Is the deletion final?', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(text: 'Delete', onPressed: onDelete , color: Colors.red,),
                  SizedBox(width: 8,),
                  MyButton(text: 'Cancel', onPressed: onCancel , color: Colors.grey.shade600,),
                ],
              )
              
            ],
          )
      )
      ,
    );
  }
}