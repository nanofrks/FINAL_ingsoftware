// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListaTareasView extends StatelessWidget {
  const ListaTareasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 48,
              color: const Color(0xFF736CED),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Acción al presionar el icono de flecha hacia la izquierda
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  const Spacer(),
                  const Text(
                    'Seguimiento de hábitos',
                    style: TextStyle(
                      fontFamily: 'BobaMilky',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),

            //lista de hábitos
            const SizedBox(height: 16),
            const HabitButton(
              task: 'Regar las plantas',
            ),
            const SizedBox(height: 16),
            const HabitButton(
              task: 'Leer',
            ),
            const SizedBox(height: 16),
            const HabitButton(
              task: 'Estudiar para el parcial',
            ),
            const SizedBox(height: 16),
            const HabitButton(
              task: 'Limpiar la arena del gato',
            ),
            const SizedBox(height: 16),
            Expanded(child: Container()),

            //botón para añadir una nueva tarea (no implementado)
            FloatingActionButton(
              backgroundColor: const Color(0xFF9F9FED),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                // Lógica para agregar una nueva tarea
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class HabitButton extends StatefulWidget {
  final String task;

  const HabitButton({super.key, required this.task});

  @override
  _HabitButtonState createState() => _HabitButtonState();
}

class _HabitButtonState extends State<HabitButton> {
  bool isCompleted = false;

//marca si ya se completó una tarea
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isCompleted = !isCompleted;
        });
      },

      //decoración del contenedor de cada tarea
      child: Container(
        width: 420,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF9F9FED),
          borderRadius: BorderRadius.circular(8),
        ),

        //decoración del checkbox
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: isCompleted
                  ? const Icon(
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

