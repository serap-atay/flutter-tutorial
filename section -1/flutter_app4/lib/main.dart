import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(primarySwatch: Colors.teal,
      textTheme: TextTheme(headline1: TextStyle(color: Colors.purple))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
