import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: ListView(
          children: Utils.contactos.map((contacto) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(contacto.imagen),
              ),
              //const Icon(Icons.person),
              title: Text(contacto.name),
              subtitle: Text(contacto.telefono),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(contact: contacto),
                    ));
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
