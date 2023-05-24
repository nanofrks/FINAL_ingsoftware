import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:emook/Views/RegistroView.dart';
import 'package:emook/Views/PrincipalView.dart';
import 'package:emook/Views/AboutView.dart';

class LoginView extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            Image.asset(
              'assets/images/logo.png',
              height: 120,
            ),
            const SizedBox(height: 8),
            const Text(
              'Emook',
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
                      controller: _emailController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Correo o usuario',
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
                onPressed: () async {
                  try {
                    final UserCredential userCredential =
                        await _auth.signInWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passwordController.text);

                    // Verificar si el inicio de sesión fue exitoso
                    if (userCredential.user != null) {
                      // Acción al iniciar sesión correctamente
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrincipalView()),
                      );
                    }
                  } catch (e) {
                    // Manejar errores de inicio de sesión
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Error al iniciar sesión'),
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
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistroView()),
                );
              },
              child: const Text(
                '¿No tienes cuenta? Regístrate aquí',
                style: TextStyle(
                  fontFamily: 'Boba Milky',
                  fontSize: 18,
                  color: Color(0xFF736CED),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutView()),
                );
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
