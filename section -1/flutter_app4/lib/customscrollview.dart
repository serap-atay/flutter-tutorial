import 'dart:math';

import 'package:flutter/material.dart';

class CustomScrollViewUse extends StatelessWidget {
  const CustomScrollViewUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 100,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("Sliver AppBar"),
            background: Image.asset(
              'assets/images/indir.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(delegate: SliverChildListDelegate(SabitListe()))),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikelemanuretenliste,
                childCount: 6),
          ),
        ),

        SliverPadding(padding: EdgeInsets.all(10) , 
        sliver: SliverFixedExtentList(
          delegate: SliverChildListDelegate(SabitListe()),
          itemExtent: 300, //SliverChildListDelegate ten daha kullanışlı çünkü gelicek elemanların height belli
        ),),
        SliverPadding(padding: EdgeInsets.all(10) ,
        sliver: SliverFixedExtentList(delegate: SliverChildBuilderDelegate(_dinamikelemanuretenliste,childCount: 6),itemExtent: 50,),
        ),  

        //sabit elemanlarda bir satırda kaç tane eleman olacağını söylediğimiz grid türü 
        SliverGrid(
          delegate: SliverChildListDelegate(SabitListe()), 
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 2)) ,
             
        //dinamik elemanlarda bir satırda kaç tane eleman olacağını söylediğimiz grid türü 
        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikelemanuretenliste,childCount: 6), 
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 3)),

        SliverGrid.count(
        crossAxisCount: 6 ,
        children: SabitListe(),) ,  

        SliverGrid.extent(maxCrossAxisExtent: 200 ,
        children: SabitListe(),),
        ],

    );
  }

  List<Widget> SabitListe() {
    return [
      Container(
        color: Colors.amber,
        height: 200,
        alignment: Alignment.center,
        child: Text("Hello world",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center),
      ),
      Container(
        color: Colors.purple,
        height: 200,
        alignment: Alignment.center,
        child: Text("Hello world",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center),
      ),
      Container(
        color: Colors.green,
        height: 200,
        alignment: Alignment.center,
        child: Text("Hello world",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center),
      ),
      Container(
        color: Colors.blue,
        height: 200,
        alignment: Alignment.center,
        child: Text("Hello world",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center),
      ),
      Container(
        color: Colors.pink,
        height: 200,
        alignment: Alignment.center,
        child: Text("Hello world",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center),
      ),
    ];
  }

  Widget _dinamikelemanuretenliste(context, int index) {
    return Container(
      color: Randomrenk(),
      height: 200,
      alignment: Alignment.center,
      child: Text("Dinamik liste: $index",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center),
    );
  }

  Color Randomrenk() {
    return Color.fromARGB(Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255), Random().nextInt(255));
  }
}
