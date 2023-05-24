import 'package:flutter/material.dart';

class ListaTareasView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 48,
              color: Color(0xFF736CED),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      // Lógica para volver a la vista principal
                    },
                  ),
                  Spacer(),
                  Text(
                    'Seguimiento de hábitos',
                    style: TextStyle(
                      fontFamily: 'BobaMilky',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 16),
            HabitButton(
              task: 'Regar las plantas',
            ),
            SizedBox(height: 16),
            HabitButton(
              task: 'Leer',
            ),
            SizedBox(height: 16),
            HabitButton(
              task: 'Estudiar para el parcial',
            ),
            SizedBox(height: 16),
            HabitButton(
              task: 'Limpiar la arena del gato',
            ),
            SizedBox(height: 16),
            Expanded(child: Container()),
            FloatingActionButton(
              backgroundColor: Color(0xFF9F9FED),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                // Lógica para agregar una nueva tarea
              },
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class HabitButton extends StatefulWidget {
  final String task;

  HabitButton({required this.task});

  @override
  _HabitButtonState createState() => _HabitButtonState();
}

class _HabitButtonState extends State<HabitButton> {
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCompleted = !isCompleted;
        });
      },
      child: Container(
        width: 420,
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 16),
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Color(0xFF9F9FED),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: isCompleted
                  ? Icon(
                      Icons.check,
                      color: Colors.black,
                    )
                  : null,
            ),
            Expanded(
              child: Text(
                widget.task,
                style: TextStyle(
                  fontFamily: 'Sniglet',
                  fontSize: 20,
                  color: Colors.white,
                  decoration: isCompleted ? TextDecoration.lineThrough : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

