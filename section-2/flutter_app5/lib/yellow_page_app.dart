import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("YellowPage App" ),
      ),
      body: Center(
        child:  Text("YellowPage App" , style: TextStyle(fontSize: 24),),
        ),
    );
  }
}