import 'package:flutter/material.dart';

class listViewLayaout extends StatelessWidget {
  const listViewLayaout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // child varsa child kadar yer kaplar yoksa parentı kadar kaplar.
    height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red , width: 4 , style: BorderStyle.solid),
      ),
       child: Row(
         children: [
           Text("Başladı"),
           Expanded(
             child: ListView( //tüm alanı kaplar taşarsa scrolla ilerler,
                scrollDirection: Axis.horizontal,
                 shrinkWrap: true, // içindeki childlar kadar yer kaplar
                 children: [
                   Container(width: 200, color: Colors.orange.shade200,),
                   Container(width: 200, color: Colors.orange.shade400,),
                   Container(width: 200, color: Colors.orange.shade500,),
                   Container(width: 200, color: Colors.orange.shade600,),
                 ],
                 ),
           ),
           Text("Bitti"),

         ],
       ),
    );
  }

  Column listinsidecolumn() {
    return Column(
       children: [
         Text("Başladı"),
         Expanded(
           child: ListView( //tüm alanı kaplar taşarsa scrolla ilerler,
           shrinkWrap: true, // içindeki childlar kadar yer kaplar
           children: [
             Container(height: 200, color: Colors.orange.shade200,),
             Container(height: 200, color: Colors.orange.shade400,),
             Container(height: 200, color: Colors.orange.shade500,),
             Container(height: 200, color: Colors.orange.shade600,),
           ],
           ),
         ),
         Text("Başladı"),

       ],
     );
  }
}