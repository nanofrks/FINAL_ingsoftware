// ignore_for_file: file_names

import 'package:emook/Views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:emook/Views/RegistroView.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFfef9ff),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFF9f9fed),
            width: 6,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Desarrolladores:',
              style: TextStyle(
                color: Color(0xFF9f9fed),
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Sniglet',
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '- Valeria Espinal\n'
              '- Natalia Arboleda\n'
              '- Jeronimo Valencia\n'
              '- Sebastián Restrepo\n'
              '- Jhonier Mejía',
              style: TextStyle(
                color: Color(0xFF9f9fed),
                fontSize: 16,
                fontFamily: 'Sniglet',
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Lenguajes: Dart, Flutter\n'
              'Entorno: Visual Studio\n'
              'Recursos usados: Canva, Proto.io\n'
              'Aplicación de mascota virtual con el objetivo de ayudar a la salud mental, seguimiento de hábitos y manejo emocional de los usuarios; todo con un entorno creativo y adorable.',
              style: TextStyle(
                color: Color(0xFF9f9fed),
                fontSize: 16,
                fontFamily: 'Sniglet',
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              },
              child: const Text(
                'Regresar',
                style: TextStyle(
                  color: Color(0xFF736ced),
                  fontSize: 16,
                  fontFamily: 'Boba Milky',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
