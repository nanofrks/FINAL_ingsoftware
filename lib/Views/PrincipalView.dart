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
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      child: Image.asset('assets/images/mascotas/pulpo.png'),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF9FF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nombre de la mascota',
                          style: TextStyle(
                            color: Color(0xFF9F9FED),
                            fontFamily: 'Boba Milky',
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 160,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFE0D5F4),
                                Color(0xFFB4AEF5),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Chatea con tu mascota',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Boba Milky',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(
              color: Color(0xFFE0D5F4),
              thickness: 4,
              height: 32,
              indent: 16,
              endIndent: 16,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
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
                      SizedBox(height: 8),
                      Text(
                        'Tu Diario',
                        style: TextStyle(
                          color: Color(0xFFB5AFF5),
                          fontFamily: 'Sniglet',
                        ),
                      ),
                    ],
                  ),
                ),
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
                      SizedBox(height: 8),
                      Text(
                        'Manejo de crisis',
                        style: TextStyle(
                          color: Color(0xFFB5AFF5),
                          fontFamily: 'Sniglet',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Navegar a ListaTareasView
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/principal/tareas.png',
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Seguimiento de hábitos',
                        style: TextStyle(
                          color: Color(0xFFB5AFF5),
                          fontFamily: 'Sniglet',
                        ),
                      ),
                    ],
                  ),
                ),
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
                      SizedBox(height: 8),
                      Text(
                        'Ajustes',
                        style: TextStyle(
                          color: Color(0xFFB5AFF5),
                          fontFamily: 'Sniglet',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              color: Color(0xFFE0D5F4),
              thickness: 4,
              height: 32,
              indent: 16,
              endIndent: 16,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Acción al presionar "Sobre la aplicación"
              },
              child: Text(
                'Sobre la aplicación',
                style: TextStyle(
                  color: Color(0xFF736CED),
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

