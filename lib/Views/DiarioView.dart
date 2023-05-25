// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:emook/Views/PrincipalView.dart';

class DiarioView extends StatelessWidget {
  final String userId;
  const DiarioView({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              color: const Color(0xFF736CED),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Acción al presionar el icono de flecha hacia la izquierda
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrincipalView(
                                  userId: userId,
                                )),
                      );
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Diario',
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
            GestureDetector(
              onTap: () {
                // Acción al presionar el primer container
              },
              child: Container(
                height: 120,
                color: const Color(0xFFFEF9FF),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/emociones/sonrisa.png',
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Alegre',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            TagWidget(text: 'mascota'),
                            TagWidget(text: 'familia'),
                            TagWidget(text: 'pareja'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Fecha y hora',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Acción al presionar el segundo container
              },
              child: Container(
                height: 120,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/emociones/sonrisa (1).png',
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Optimista',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            TagWidget(text: 'descanso'),
                            TagWidget(text: 'amigos'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Fecha y hora',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Acción al presionar el tercer container
              },
              child: Container(
                height: 120,
                color: const Color(0xFFFEF9FF),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/emociones/triste.png',
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Herido',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            TagWidget(text: 'trabajo'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Fecha y hora',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Acción al presionar el cuarto container
              },
              child: Container(
                height: 120,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/emociones/pensando.png',
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Deprimido',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            TagWidget(text: 'familia'),
                            TagWidget(text: 'amigos'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Fecha y hora',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Acción al presionar el quinto container
              },
              child: Container(
                height: 120,
                color: const Color(0xFFFEF9FF),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/emociones/frio.png',
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Orgulloso',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            TagWidget(text: 'logro'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Fecha y hora',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
            const SizedBox(height: 20),
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
      ),
    );
  }
}

class TagWidget extends StatelessWidget {
  final String text;

  const TagWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFD4C1EC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Sniglet',
          color: Colors.black,
        ),
      ),
    );
  }
}
