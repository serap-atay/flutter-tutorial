import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("PurplePage App" ),
      ),
      body: Center(
        child:  Text("PurplePage App" , style: TextStyle(fontSize: 24),),
        ),
    );
  }
}