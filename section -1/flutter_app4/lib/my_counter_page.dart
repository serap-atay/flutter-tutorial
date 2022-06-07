import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({ Key? key }) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
   int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Counter App",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona basıldı",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(_sayac.toString(),
                style: Theme.of(context).textTheme.headline1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Sayaciarttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void Sayaciarttir() {
    setState(() {
      
    });
      _sayac++;
  }
}