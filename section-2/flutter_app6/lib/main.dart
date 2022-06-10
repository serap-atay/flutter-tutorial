import 'package:flutter/material.dart';
// import 'package:flutter_app6/textfield.dart';
// import 'package:flutter_app6/textformfield.dart';

import 'other_form_elements.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: OtherFormElementsUse(),
    ),);
  }
}
