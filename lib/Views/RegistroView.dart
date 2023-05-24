import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:emook/Views/PrincipalView.dart';

class RegistroView extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            SizedBox(height: 8),
            Text(
              'Registro',
              style: TextStyle(
                fontFamily: 'Cakecafe',
                fontSize: 32,
                color: Color(0xff736ced),
              ),
            ),
            SizedBox(height: 32),
            Row(
              children: [
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
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff9f9fed)),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color(0xff9f9fed),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Usuario',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
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
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff9f9fed)),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color(0xff9f9fed),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Correo',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
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
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff9f9fed)),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color(0xff9f9fed),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Contraseña',
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
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
                child: Text(
                  'Continuar',
                  style: TextStyle(
                    fontFamily: 'Boba Milky',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Spacer(),
            // Texto para ir a la vista "Sobre la aplicación"
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text(
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
        MaterialPageRoute(builder: (context) => RegistroViewState2()),
      );
    } catch (e) {
      // Ocurrió un error durante el registro
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error de registro'),
          content: Text(e.toString()),
          actions: [
            TextButton(
              child: Text('OK'),
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
            SizedBox(height: 8),
            Text(
              'Crea tu mascota',
              style: TextStyle(
                fontFamily: 'Cakecafe',
                color: Color(0xFF736CED),
                fontSize: 24,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Elige su apariencia',
              style: TextStyle(
                fontFamily: 'Sniglet',
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
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
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    // Acción al seleccionar la imagen
                  },
                  child: Image.asset(
                    'assets/images/mascotas/gato.png',
                    height: 80,
                  ),
                ),
                SizedBox(width: 16),
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
            SizedBox(height: 8),
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
                SizedBox(width: 16),
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
            SizedBox(height: 16),
            Text(
              'Elige su nombre',
              style: TextStyle(
                fontFamily: 'Sniglet',
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff9f9fed)),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
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
            SizedBox(height: 16),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
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
                    MaterialPageRoute(builder: (context) => PrincipalView()),
                  );
                },
                child: Text(
                  'Continuar',
                  style: TextStyle(
                    fontFamily: 'Boba Milky',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Spacer(),

            // Texto para ir a la vista "Sobre la aplicación"
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text(
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
