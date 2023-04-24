import 'package:flutter/material.dart';

import '../models/contact.dart';

class DetailsScreen extends StatelessWidget {
  final Contact contact;
  const DetailsScreen({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsScreen'),
      ),
      body: Center(
        child: Column(children: [
          Image.asset(contact.imagen),
          Text(
            contact.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Text(
            contact.telefono,
            style: const TextStyle(fontSize: 30),
          ),
          Text(contact.direccion),
          Text(contact.cedula)
        ]),
      ),
    );
  }
}
