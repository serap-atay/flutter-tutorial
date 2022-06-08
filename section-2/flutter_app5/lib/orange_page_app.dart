import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("OrangePage App"),
        ),
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text("En başa geri dön"),
                style: ElevatedButton.styleFrom(primary: Colors.teal.shade300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil(
                      (route) => route.settings.name == '/purplepage');
                },
                child: Text("Mora geri dön"),
                style: ElevatedButton.styleFrom(primary: Colors.teal.shade300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .popUntil((route) => route.settings.name == '/');
                },
                child: Text("En başa dön"),
                style: ElevatedButton.styleFrom(primary: Colors.teal.shade300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/yellowpage', (route) => route.isFirst);
                },
                child: Text("Sarıyı anasayfadan sonra ekle"),
                style: ElevatedButton.styleFrom(primary: Colors.teal.shade300),
              ),
            ),
          ],
        )));
  }
}
