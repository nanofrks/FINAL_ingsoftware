import 'package:flutter/material.dart';

class RegistroView extends StatelessWidget {
  const RegistroView({Key? key}) : super(key: key);

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
                    MaterialPageRoute(builder: (context) => RegistroViewState2()),
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
                  Navigator.pushNamed(context, '/principal_view');
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