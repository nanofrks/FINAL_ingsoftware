import 'package:flutter/material.dart';
import 'package:emook/Views/DiarioView.dart';

import 'package:emook/Views/AjustesView.dart';

import 'package:emook/Views/TecnicasView.dart';


class PrincipalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF9F9FED),
                    ),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFEF9FF),
                      ),
                      child: Image.asset(
                        'assets/images/pulpo.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF9FF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nombre de la mascota',
                          style: TextStyle(
                            fontFamily: 'Boba Milky',
                            color: Color(0xFF9F9FED),
                          ),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Acción al presionar el botón "Chatea con tu mascota"
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFB4AEF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Chatea con tu mascota',
                            style: TextStyle(
                              fontFamily: 'Boba Milky',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              width: 200,
              color: Color(0xFFE0D5F4),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DiarioView()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/principal/libro.png',
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Tu Diario',
                        style: TextStyle(
                          fontFamily: 'Sniglet',
                          color: Color(0xFFB5AFF5),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TecnicasView()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/principal/triste.png',
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Manejo de crisis',
                        style: TextStyle(
                          fontFamily: 'Sniglet',
                          color: Color(0xFFB5AFF5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Acción al presionar la tercera imagen
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/principal/tareas.png',
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Seguimiento de hábitos',
                        style: TextStyle(
                          fontFamily: 'Sniglet',
                          color: Color(0xFFB5AFF5),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AjustesView()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/principal/config.png',
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ajustes',
                        style: TextStyle(
                          fontFamily: 'Sniglet',
                          color: Color(0xFFB5AFF5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 2,
              width: 200,
              color: Color(0xFFE0D5F4),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Acción al presionar "sobre la aplicación"
              },
              child: Text(
                'Sobre la aplicación',
                style: TextStyle(
                  fontFamily: 'Boba Milky',
                  color: Color(0xFF736CED),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
