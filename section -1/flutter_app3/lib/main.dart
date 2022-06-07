import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: ColumnDerslerOlustur()),
            ],
          ),
        ),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       containerOlustur("D", Colors.red.shade200),
       containerOlustur("A", Colors.red.shade300),
       containerOlustur("R", Colors.red.shade400),
       containerOlustur("T", Colors.red.shade500),
      ],
    );
  }

  Column ColumnDerslerOlustur() {
    return Column(
      children: [
        Expanded(
          child: containerOlustur("E", Colors.red.shade200,margin: 10),
        ),
        Expanded(
          child: containerOlustur("R", Colors.red.shade300,margin: 10),

        ),
        Expanded(
          child: containerOlustur("S", Colors.red.shade400 ,margin: 10),

        ),
        Expanded(
         child: containerOlustur("L", Colors.red.shade500,margin: 10),

        ),
        Expanded(
          child: containerOlustur("E", Colors.red.shade600,margin: 10),
         
        ),
        Expanded(
         child: containerOlustur("R", Colors.red.shade700,margin: 10),

        ),
        Expanded(
          child: containerOlustur("İ", Colors.red.shade800,margin: 10),

        ),
      ],
    );
  }

//kısa çözüm
  Container containerOlustur(String harf, Color renk,{double margin = 0} ){
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      color: renk,
      margin: EdgeInsets.only(top: margin),
      child: Text(
        harf,
        style: TextStyle(fontSize: 34),
      ),
    );
  }
}
