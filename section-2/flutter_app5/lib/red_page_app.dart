import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);

  int _rastgelesayi = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (_rastgelesayi == 0) {
          _rastgelesayi = Random().nextInt(100);
          Navigator.pop(context, _rastgelesayi);
        }
        return Future.value(false);
      }, // gppbardaki veya telefondaki geri tuşundan çıkılmasını önler.geri dön tuşuna basılmadan ve değeri almadan çıkılmasını önler.

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Red Page App"),
          automaticallyImplyLeading:
              false, //appbardaki geriye gitme öz. kalkar.
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
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  if (Navigator.of(context).canPop()) {
                    Navigator.pop(context, _rastgelesayi);
                  } else {
                    print("pop yapamaz");
                  }
                },
                child: Text("Maybe popup kullanımı"),
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/orangepage');
                },
                child: Text("Go to Orange"),
                style: ElevatedButton.styleFrom(primary: Colors.orange.shade300),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
