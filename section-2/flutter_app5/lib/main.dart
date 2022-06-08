import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app5/red_page_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () async {
                int? _gelensayi = await Navigator.push<int>(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => RedPage(),
                  ),
                );
                print("Gelen sayi : $_gelensayi");
              },
              child: Text("Kırmızı sayfaya gir IOS"),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                //  Navigator.push(context, route),
                  Navigator.of(context)
                    .push<int>(MaterialPageRoute(builder: (context) => RedPage()))
                    .then((int? value) => print("Gelen sayi : $value"));
              },
              child: Text("Kırmızı sayfaya gir Andorid"),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
          ),
        ],
      )),
    );
  }
}
