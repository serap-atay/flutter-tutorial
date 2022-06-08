import 'package:flutter/material.dart';

class CardlistTileUse extends StatelessWidget {
  const CardlistTileUse({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card List Tile"),
      ),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            Column(
            children: [
              Expanded(child: cardColumn()),
              Expanded(child: cardColumn()),
              Expanded(child: cardColumn()),
              Expanded(child: cardColumn()),
              Expanded(child: cardColumn()),
              Expanded(child: cardColumn()),
            ],
          ),
          ],
         
        ),
      ),
    );
  }

  SingleChildScrollView singlechildscrollview() {
    return SingleChildScrollView(
        child: Column(
          children: [
            Expanded(child: cardColumn()),
            Expanded(child: cardColumn()),
            Expanded(child: cardColumn()),
            Expanded(child: cardColumn()),
            Expanded(child: cardColumn()),
            Expanded(child: cardColumn()),
          ],
        ),
      );
  }

  Column cardColumn() {
    return Column(
        children: [
          Card(
            color: Colors.blue.shade200,
            shadowColor: Colors.grey,
            elevation: 12,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child:ListTile(
              leading: CircleAvatar(child: Icon(Icons.ad_units)),
              title: Text("Başlık"),
              subtitle: Text("Alt başlık "),
              trailing: Icon(Icons.radio_button_checked),
            )
          ),
          Divider(
            color: Colors.red,
            thickness: 4,
            height: 10,
            indent: 20,
            endIndent: 60,
          )
        ],
      );
  }
}