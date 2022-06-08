import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("GreenPage App" ),
      ),
      body: Center(
        child:  Text("GreenPage App" , style: TextStyle(fontSize: 24),),
        ),
    );
  }
}