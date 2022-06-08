import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);

  int _rastgelesayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Red Page App"),
        automaticallyImplyLeading: false, //appbardaki geriye gitme öz. kalkar.
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Red Page App",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _rastgelesayi = Random().nextInt(100);
                  Navigator.of(context).pop(_rastgelesayi);
                },
                child: Text("Geri Dön")),
          )
        ],
      )),
    );
  }
}
