import 'package:flutter/material.dart';

class GridViewUse extends StatelessWidget {
  const GridViewUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration (
                color: Colors.red[100 * ((index + 1) % 8)],
                border: Border.all(color: Colors.blue , width: 10 , style: BorderStyle.solid),
                // borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                  color :Colors.purple ,
                  offset: Offset.zero,
                  blurRadius: 5.0,
                  ),
                ],
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.red , Colors.yellow ,],
                  begin: Alignment.centerLeft ,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp,
                  ),
                image: DecorationImage(
                  image: AssetImage('assets/images/indir.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  )
              ),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Merhaba Dünya 1" ,textAlign: TextAlign.center ,style: TextStyle(fontSize: 24 , fontWeight: FontWeight.w600 ,color: Colors.white),),
              ),
            ),
            onTap:() => debugPrint("Merhaba Dünya  $index tıklanıldı"),
            onDoubleTap:() => debugPrint("Merhaba Dünya  $index çift tıklanıldı"),
            onLongPress:() => debugPrint("Merhaba Dünya  $index uzun basıldı"),
            onHorizontalDragStart:(e) => debugPrint("Merhaba Dünya  $index uzun basıldı $e"),
          );
        });
  }
}
/*  return GridView.extent(
      reverse: true,
      maxCrossAxisExtent: 100, // tek bir elemanın max büyüklüğü
      primary: false,//elemanlar ekrana sığıyorsa scroll yapmama gerek yokcfalse olabilir
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      crossAxisSpacing:20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 1" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 2" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 3" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 4" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 5" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 6" , textAlign: TextAlign.center,),
        )
      ],
      
      ); */

/* return GridView.count(
      reverse: true,
      crossAxisCount: 3 ,
      primary: false,//elemanlar ekrana sığıyorsa scroll yapmama gerek yokcfalse olabilir
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      crossAxisSpacing:20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 1" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 2" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 3" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 4" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 5" , textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child :Text("Merhaba Dünya 6" , textAlign: TextAlign.center,),
        )
      ],
      
      ); */