import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("OrangePage App" ),
      ),
      body: Center(
        child:  Text("OrangePage App" , style: TextStyle(fontSize: 24),),
        ),
    );
  }
}