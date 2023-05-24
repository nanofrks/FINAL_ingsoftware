import 'package:flutter/material.dart';
import 'package:emook/Views/PrincipalView.dart';

class DiarioView extends StatelessWidget {
  const DiarioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              color: Color(0xFF736CED),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      // Acción al presionar el icono de flecha hacia la izquierda
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PrincipalView()),
                      );
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  Expanded(
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
                color: Color(0xFFFEF9FF),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/emociones/sonrisa.png',
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alegre',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            TagWidget(text: 'mascota'),
                            TagWidget(text: 'familia'),
                            TagWidget(text: 'pareja'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
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
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Optimista',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            TagWidget(text: 'descanso'),
                            TagWidget(text: 'amigos'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
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
                color: Color(0xFFFEF9FF),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/emociones/triste.png',
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Herido',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            TagWidget(text: 'trabajo'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
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
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deprimido',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            TagWidget(text: 'familia'),
                            TagWidget(text: 'amigos'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
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
                color: Color(0xFFFEF9FF),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/emociones/frio.png',
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Orgulloso',
                          style: TextStyle(
                            fontFamily: 'Sniglet',
                            color: Color(0xFF736CED),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            TagWidget(text: 'logro'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
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
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Acción al presionar el texto "sobre la aplicación"
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

class TagWidget extends StatelessWidget {
  final String text;

  const TagWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xFFD4C1EC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Sniglet',
          color: Colors.black,
        ),
      ),
    );
  }
}
