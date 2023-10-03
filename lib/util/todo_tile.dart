import 'package:flutter/material.dart';
    
    class ToDoTile extends StatelessWidget {
      final String taskName;
      final bool taskCompleted;
      Function(bool?)? onChanged;

      ToDoTile({
        super.key,
        required this.taskName,
        required this.taskCompleted,
        required this.onChanged,
      });
    
      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
          child: Container(
            padding: EdgeInsets.all(24),
            child: Row(
              children: [
                //checkbox
                 Checkbox(
                   value: taskCompleted,
                   onChanged: onChanged,
                   activeColor: Colors.white,
                   checkColor: Colors.grey[600]
                 ),

                //task name
                Text(
                  taskName,

                  style: TextStyle(
                      decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(12)
            ),
          ),
        );
      }
    }
    