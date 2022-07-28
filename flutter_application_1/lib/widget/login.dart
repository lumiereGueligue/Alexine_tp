import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/connexion.dart';


var recupe;

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interface de connexion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Se connecter',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('caractere'),
                hintText: "char",
              ),
              keyboardType: TextInputType.text,
              onChanged: (value) {
                recupe = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  "12345",
                ),
                hintText: "12345",
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 8.0,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => connexion()));
              }),
              child: Text(
                'Se connecter',
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
