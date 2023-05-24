import 'package:emook/Views/RegistroView.dart';
import 'package:emook/Views/PrincipalView.dart';
import 'package:flutter/material.dart';
import 'package:emook/Views/AboutView.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 12),
            Image.asset(
              'assets/images/logo.png',
              height: 120,
            ),
            SizedBox(height: 8),
            Text(
              'Emook',
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
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Correo o usuario',
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
            SizedBox(height: 20),
            // Texto para ir a la vista de registro
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistroView()),
                );
              },
              child: Text(
                '¿No tienes cuenta? Regístrate aquí',
                style: TextStyle(
                  fontFamily: 'Boba Milky',
                  fontSize: 18,
                  color: Color(0xFF736CED),
                ),
              ),
            ),

            Spacer(),

            // Texto para ir a la vista "Sobre la aplicación"
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutView()),
                );
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
