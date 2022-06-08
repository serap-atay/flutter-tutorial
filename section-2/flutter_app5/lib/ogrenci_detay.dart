import 'package:flutter/material.dart';

import 'ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenogrenci;
  const OgrenciDetay({required this.secilenogrenci, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var secilen = ModalRoute.of(context)!.settings.arguments as Ogrenci;
    return Scaffold(
      appBar: AppBar(
        title: Text("Ogrenci Detay Sayfası"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(secilenogrenci.id.toString()),
            Text(secilenogrenci.name.toString()),
            Text(secilenogrenci.surname.toString()),
          ],
        ),
      ),
    );
  }
}
