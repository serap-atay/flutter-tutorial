import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app5/green_page_app.dart';
import 'package:flutter_app5/orange_page_app.dart';
import 'package:flutter_app5/red_page_app.dart';
import 'package:flutter_app5/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: Anasayfa(),
/*         routes: {
          '/redpage': (context) => RedPage(),
          '/': (context) => Anasayfa(), // bu varsa home: Anasayfa() yapamayız.
          '/orangepage': (context) => OrangePage(),
        },
        onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: Text("Error"),
                ),
                body: Center(child: Text ("404" ,style: TextStyle(fontSize: 24),),),
              );
            },
            ), */
      onGenerateRoute: RouteGenerators.routeGenerator,
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
                    .push<int>(
                        MaterialPageRoute(builder: (context) => RedPage()))
                    .then((int? value) => print("Gelen sayi : $value"));
              },
              child: Text("Kırmızı sayfaya gir Andorid"),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text("Maybe popup kullanımı"),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  print("pop yapabilir");
                } else {
                  print("pop yapamaz");
                }
              },
              child: Text("Canpop  kullanımı"),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    //login anasayfaya geçildiğinde tekrar login erişmemek uygulamadan çıkmak için kullanabilir.
                    .pushReplacement(
                        MaterialPageRoute(builder: (context) => GreenPage()));
              },
              child: Text("Push Replacement kullanımı"),
              style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/redname');
              },
              child: Text("PushNamed kullanımı"),
              style: ElevatedButton.styleFrom(primary: Colors.blue.shade300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ogrencilistesi' , arguments: 60);
              },
              child: Text("Liste Olustur"),
              style: ElevatedButton.styleFrom(primary: Colors.teal.shade300),
            ),
          ),
        ],
      )),
    );
  }
}
