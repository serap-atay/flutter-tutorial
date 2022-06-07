import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://images.pexels.com/photos/258109/pexels-photo-258109.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.red,
            width: 140,
            height: 150,
            child: Image.asset(
              'assets/images/indir.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
              color: Colors.red,
              width: 140,
              height: 150,
              margin: EdgeInsets.all(20),
              child: Image.network(_imgUrl , fit: BoxFit.cover,)
              ),
              Container(
              color: Colors.red,
              // width: 140,
              // height: 150,=> radiusun bir anlamı olmaz
              child: CircleAvatar(
                child: Text("E"),
                backgroundColor: Colors.blue.shade400,
                foregroundColor: Colors.pink,
                backgroundImage: NetworkImage(_imgUrl),
                radius: 70
              )
              ),
        ],
      ),
    );
  }
}
