import 'package:flutter/material.dart';
import 'login.dart' as global;

var un = global.recupe;

class connexion extends StatelessWidget {
  const connexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Affichage des données'),
      ),
      body: Center(
        child: Text(
          'Bienvenue: $un',
          style: TextStyle(color: Colors.black12),
        ),
      ),
    );
  }
}
