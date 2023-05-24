// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:emook/Views/PrincipalView.dart';

class RegistroView extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegistroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 120,
            ),
            const SizedBox(height: 8),
            const Text(
              'Registro',
              style: TextStyle(
                fontFamily: 'Cakecafe',
                fontSize: 32,
                color: Color(0xff736ced),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: const [
                SizedBox(width: 32),
                Text(
                  'Usuario',
                  style: TextStyle(
                    fontFamily: 'Boba Milky',
                    fontSize: 18,
                    color: Color(0xff9f9fed),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff9f9fed)),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Color(0xff9f9fed),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Usuario',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                SizedBox(width: 32),
                Text(
                  'Correo',
                  style: TextStyle(
                    fontFamily: 'Boba Milky',
                    fontSize: 18,
                    color: Color(0xff9f9fed),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff9f9fed)),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Color(0xff9f9fed),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Correo',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                SizedBox(width: 32),
                Text(
                  'Contraseña',
                  style: TextStyle(
                    fontFamily: 'Boba Milky',
                    fontSize: 18,
                    color: Color(0xff9f9fed),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff9f9fed)),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Color(0xff9f9fed),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Contraseña',
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffd4c1ec),
                    Color(0xff736ced),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  _registerUser(context);
                },
                child: const Text(
                  'Continuar',
                  style: TextStyle(
                    fontFamily: 'Boba Milky',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
            // Texto para ir a la vista "Sobre la aplicación"
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
              child: const Text(
                'Sobre la aplicación',
                style: TextStyle(
                  fontFamily: 'Boba Milky',
                  fontSize: 18,
                  color: Color(0xFF736CED),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _registerUser(BuildContext context) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
      // Registro exitoso, redirigir a la vista principal
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RegistroViewState2()),
      );
    } catch (e) {
      // Ocurrió un error durante el registro
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error de registro'),
          content: Text(e.toString()),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    }
  }
}

class RegistroViewState2 extends StatelessWidget {
  const RegistroViewState2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 120,
            ),
            const SizedBox(height: 8),
            const Text(
              'Crea tu mascota',
              style: TextStyle(
                fontFamily: 'Cakecafe',
                color: Color(0xFF736CED),
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Elige su apariencia',
              style: TextStyle(
                fontFamily: 'Sniglet',
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Acción al seleccionar la imagen
                  },
                  child: Image.asset(
                    'assets/images/mascotas/pulpo.png',
                    height: 80,
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    // Acción al seleccionar la imagen
                  },
                  child: Image.asset(
                    'assets/images/mascotas/gato.png',
                    height: 80,
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    // Acción al seleccionar la imagen
                  },
                  child: Image.asset(
                    'assets/images/mascotas/murcielago.png',
                    height: 80,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Acción al seleccionar la imagen
                  },
                  child: Image.asset(
                    'assets/images/mascotas/rhinoceros.png',
                    height: 80,
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    // Acción al seleccionar la imagen
                  },
                  child: Image.asset(
                    'assets/images/mascotas/hormiga.png',
                    height: 80,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Elige su nombre',
              style: TextStyle(
                fontFamily: 'Sniglet',
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff9f9fed)),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Color(0xff9f9fed),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Nombre de la mascota',
                      ),
                      obscureText: false,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffd4c1ec),
                    Color(0xff736ced),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  // Acción al presionar el botón "Continuar"
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PrincipalView()),
                  );
                },
                child: const Text(
                  'Continuar',
                  style: TextStyle(
                    fontFamily: 'Boba Milky',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const Spacer(),

            // Texto para ir a la vista "Sobre la aplicación"
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
              child: const Text(
                'Sobre la aplicación',
                style: TextStyle(
                  fontFamily: 'Boba Milky',
                  fontSize: 18,
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
