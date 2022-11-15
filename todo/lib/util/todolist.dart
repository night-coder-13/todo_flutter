import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoList extends StatelessWidget {

  final String taskName;
  final bool taskCompletad;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  Function(BuildContext)? editFunction;

  ToDoList ({
    super.key, 
    required this.taskName,
    required this.taskCompletad,
    required this.onChanged,
    required this.deleteFunction,
    required this.editFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        startActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: editFunction,
              icon: Icons.edit,
              backgroundColor: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(8),
          )
          ]
        ),
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade400,
              borderRadius: BorderRadius.circular(8),
          )
          ]
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Checkbox(
                value: taskCompletad,
                onChanged: onChanged,
                activeColor: Colors.black87,
              ),
              Text(
                taskName , 
                style: TextStyle(
                  color: Colors.black87,
                  decoration: taskCompletad 
                  ? TextDecoration.lineThrough 
                  : TextDecoration.none
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(color: Colors.purple[200] ,
          borderRadius: BorderRadius.circular(8)
          ),
        ),
      ),
    );
  }
}