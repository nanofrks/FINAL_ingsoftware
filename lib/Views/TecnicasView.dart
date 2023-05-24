// ignore_for_file: file_names

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TecnicasView extends StatelessWidget {
  final CollectionReference tecnicamanejoCollection =
      FirebaseFirestore.instance.collection('Tecnica_manejo');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '  Manejo de crisis',
          style: TextStyle(
              fontFamily: 'Boba Milky', fontSize: 28, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: tecnicamanejoCollection.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final documents = snapshot.data?.docs ?? [];

          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (BuildContext context, int index) {
              final document = documents[index];

              // Obtener los campos del documento
              final imageUrl = document['Imagen'];
              final tipoCrisis = document['TipoCrisis'];
              final descripcion = document['descripcion'];
              final recomendaciones = document['recomendaciones'];
              final reacciones = document['reacciones'];

              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100.0),
                    Flexible(
                      flex: 1,
                      child: Image.network(
                        imageUrl,
                        width:
                            150, // Ajusta el ancho de la imagen según tus necesidades
                        height:
                            150, // Ajusta la altura de la imagen según tus necesidades
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tipoCrisis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              fontFamily: 'Boba Milky',
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            descripcion,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Boba Milky',
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          GestureDetector(
                            onTap: () {
                              //Incrementar el contador de reacciones en 1
                              int nuevoValor = reacciones + 1;

                              // Actualizar el campo "reacciones" en la base de datos
                              document.reference
                                  .update({'reacciones': nuevoValor}).then((_) {
                                print(
                                    'Campo "reacciones" actualizado correctamente');
                              }).catchError((error) {
                                print(
                                    'Error al actualizar el campo "reacciones": $error');
                              });
                            },
                            child: Row(
                              children: [
                                const Icon(Icons.favorite,
                                    color: Color.fromARGB(255, 237, 159, 185)),
                                Text(
                                  reacciones.toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    fontFamily: 'Boba Milky',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
