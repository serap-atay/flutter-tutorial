import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img =
      "https://m.media-amazon.com/images/I/51SR+qEWbyL._AC_SY780_.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.pink),
      home: Scaffold(
        appBar:
            AppBar(title: Text('Başlık'), backgroundColor: Colors.blueAccent),
        body: Container(
          // height: 300,
          // width: 150,
          color: Colors.red.shade300,
          /*  child: Row(
            mainAxisSize: MainAxisSize.max,// MainAxisSize.min ,içerik kadar yer kaplar.
            mainAxisAlignment: MainAxisAlignment.center , */
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("D"),
                  Text("E"),
                  Text("N"),
                  Text("İ"),
                  Text("Z"),
                ],
              ),
              Icon(
                Icons.add_circle,
                size: 50,
                color: Colors.green,
              ),
              Icon(
                Icons.add_circle,
                size: 50,
                color: Colors.red,
              ),
              Icon(
                Icons.add_circle,
                size: 50,
                color: Colors.blue,
              ),
              Icon(
                Icons.add_circle,
                size: 50,
                color: Colors.orange,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: Icon(
            Icons.ac_unit_rounded,
            color: Colors.amberAccent,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }

  Widget ContainerLessons() {
    return Container(
      color: Colors.green,
      child: Center(
        widthFactor: 2,
        heightFactor:
            2, //içinde olan elemanların kapladığı yerin iki katı kadar yer kaplar
        child: Container(
          child: Container(
            // alignment: Alignment.center,//ortalar içindeki child değil parent kadar yer kaplar
            alignment: Alignment.center,
            width: 150,
            height: 150,
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              // color: Colors.white,//box decoration kullanırsak bunu kullanamayız
              height: 100,
              width: 100,
              // child: FlutterLogo(
              //   size: 70,
              //   // style: FlutterLogoStyle.stacked,
              //   textColor: Colors.purple,
              // ),
              child: Text(
                "Deniz",
                style: TextStyle(fontSize: 20),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                      color: Colors.black, width: 3, style: BorderStyle.solid),
                  // borderRadius: BorderRadius.circular(10),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(_img),
                      fit: BoxFit.scaleDown,
                      repeat: ImageRepeat.repeat),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(10, 10),
                        blurRadius: 10,
                        blurStyle: BlurStyle.normal),
                    BoxShadow(
                        color: Colors.green,
                        offset: Offset(0, -10),
                        blurRadius: 10,
                        blurStyle: BlurStyle.normal),
                  ]),
            ),
          ),
          // margin: EdgeInsets.all(10),
          // margin: EdgeInsets.symmetric(vertical: 80 , horizontal: 20)),
          // margin: EdgeInsets.fromLTRB(10, 20, 20, 10),
          // padding: EdgeInsets.all(50),
          // margin: EdgeInsets.only(left: 8 ,right: 8),

          // child: Text("Deniz" ,textAlign: TextAlign.center,),//satır bazında ortalar
          // constraints: BoxConstraints(minHeight: 100,minWidth: 100,maxHeight: 300, maxWidth: 300),//parenta bağlı kalmadan w-h degerlerini alır.
        ),
      ),
    );
  }
}
