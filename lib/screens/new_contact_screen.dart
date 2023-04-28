import 'package:flutter/material.dart';
import 'package:my_app/models/contact.dart';
import 'package:my_app/utils/utils.dart';

import '../utils/utils.dart';
import 'home_screen.dart';

class NewContactScreen extends StatelessWidget {
  NewContactScreen({Key? key}) : super(key: key);

  final nombreController = TextEditingController();
  final cedulaController = TextEditingController();
  final direccionController = TextEditingController();
  final telefonoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewContactScreen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: Utils.nombre,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: cedulaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: Utils.cedula,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: direccionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: Utils.direccion,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: telefonoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: Utils.telefono,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {
          Utils.contactos.add(Contact(
              name: nombreController.text,
              cedula: cedulaController.text,
              direccion: direccionController.text,
              telefono: telefonoController.text,
              imagen: "images/imagen1.png"));
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
        },
      ),
    );
  }
}
