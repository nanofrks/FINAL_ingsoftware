// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emook/Views/AboutView.dart';
import 'package:flutter/material.dart';
import 'package:emook/Views/DiarioView.dart';
import 'package:emook/Views/ListaTareasView.dart';

import 'package:emook/Views/AjustesView.dart';

import 'package:emook/Views/TecnicasView.dart';
import 'package:emook/Views/ChatbotView.dart';

class PrincipalView extends StatefulWidget {
  final String userId;

  PrincipalView({Key? key, required this.userId}) : super(key: key);

  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  late String Imascota = "";
  late String Nmascota = "";

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() {
    FirebaseFirestore.instance
        .collection('users')
        .doc(widget.userId)
        .get()
        .then((DocumentSnapshot snapshot) {
      if (snapshot.exists) {
        setState(() {
          Imascota = snapshot['Imascota'];
          Nmascota = snapshot['Nmascota'];
        });
      }
    }).catchError((error) {
      // Handle the error
      print(error);
    });
  }

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
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF9F9FED),
                    ),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFEF9FF),
                      ),
                      child: Image.asset(Imascota),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEF9FF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Nmascota,
                          style: TextStyle(
                            color: Color(0xFF9F9FED),
                            fontFamily: 'Boba Milky',
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: 160,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFE0D5F4),
                                Color(0xFFB4AEF5),
                              ],
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              // Acción al presionar el botón "Continuar"
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatbotView(
                                          userId: widget.userId,
                                          Imascota: Imascota,
                                          Nmascota: Nmascota,
                                        )),
                              );
                            },
                            child: const Text(
                              'Chatea con tu mascota',
                              style: TextStyle(
                                fontFamily: 'Boba Milky',
                                fontSize: 18,
                                color: Colors.white,
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
            const SizedBox(height: 20),
            const Divider(
              color: Color(0xFFE0D5F4),
              thickness: 4,
              height: 32,
              indent: 16,
              endIndent: 16,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DiarioView(
                                userId: widget.userId,
                              )),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/principal/libro.png',
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(height: 8),
                      const Text(
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
                      const SizedBox(height: 8),
                      const Text(
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
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListaTareasView()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/principal/tareas.png',
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(height: 8),
                      const Text(
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
                      MaterialPageRoute(
                          builder: (context) => const AjustesView()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/principal/config.png',
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(height: 8),
                      const Text(
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
            const SizedBox(height: 20),
            const Divider(
              color: Color(0xFFE0D5F4),
              thickness: 4,
              height: 32,
              indent: 16,
              endIndent: 16,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutView()),
                );
                // Acción al presionar "Sobre la aplicación"
              },
              child: const Text(
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
