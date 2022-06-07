import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: () {},
            onLongPress: () {
              debugPrint("Uzun basıldı");
            },
            child: Text("text button")),
        TextButton.icon(
            onPressed: () {},
            style: ButtonStyle(
              // backgroundColor: MaterialStateProperty.all(Colors.red),
              backgroundColor:  MaterialStateProperty.resolveWith((states) {
                if(states.contains(MaterialState.pressed)){
                  return Colors.red;
                }
                if(states.contains(MaterialState.hovered)){
                  return Colors.green;
                }
              }),
              foregroundColor: MaterialStateProperty.all(Colors.red),
              overlayColor: MaterialStateProperty.all(Colors.red.withOpacity(0.5)),
            ),
            icon: Icon(Icons.add),
            label: Text("Text buton with icon")),
        ElevatedButton(
          onPressed: () {}, 
          style: ElevatedButton.styleFrom(
            primary: Colors.red , 
            onPrimary: Colors.yellow),
          child: Text("elevated buton")),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("elevated buton with icon")),
        OutlinedButton(
          onPressed: () {},
          child: Text("outlined buton"),
        ),
        OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              // shape: StadiumBorder(
              //   side: BorderSide(color: Colors.red ,width: 3 , style: BorderStyle.solid),
              // )
              side: BorderSide(color: Colors.pink ,width: 3 , style: BorderStyle.solid),
              shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            icon: Icon(Icons.add),
            label: Text("outlined buton with icon")),
      ],
    );
  }
}
