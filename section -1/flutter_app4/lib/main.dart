import 'package:flutter/material.dart';
import 'package:flutter_app4/buton_types.dart';
import 'package:flutter_app4/dropdown_button.dart';
import 'package:flutter_app4/image_widget.dart';
import 'package:flutter_app4/my_counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        outlinedButtonTheme: OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue))),
      textTheme: TextTheme(headline1: TextStyle(color: Colors.purple))),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
          ),
          body: DropdownButtonUse(),),
    );
  }
}

