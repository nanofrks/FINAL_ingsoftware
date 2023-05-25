// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:emook/Views/login_view.dart';

class AjustesView extends StatelessWidget {
  const AjustesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            color: const Color(0xFF736CED),
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
                const Expanded(
                  child: Center(
                    child: Text(
                      'Ajustes',
                      style: TextStyle(
                        fontFamily: 'Boba Milky',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón "Cerrar sesión"
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFA7470)),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Text(
                    'Cerrar sesión',
                    style: TextStyle(
                      fontFamily: 'Sniglet',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Acción al presionar el texto "sobre la aplicación"
            },
            child: const Text(
              'Sobre la aplicación',
              style: TextStyle(
                fontFamily: 'Boba Milky',
                color: Color(0xFF736CED),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
