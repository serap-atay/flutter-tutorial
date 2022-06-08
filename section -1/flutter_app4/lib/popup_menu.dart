import 'package:flutter/material.dart';

class PopupMenuUser extends StatefulWidget {
  const PopupMenuUser({Key? key}) : super(key: key);

  @override
  State<PopupMenuUser> createState() => _PopupMenuUserState();
}

class _PopupMenuUserState extends State<PopupMenuUser> {
  String _secilensehir = "Ankara";
  List<String> liste = [
    "Ankara",
    "İstanbul",
    "Bursa",
    "Edirne",
    "İzmir",
    "Eskişehir"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (value) {
          print("Secilen sehir : $_secilensehir");
          setState(() {
            _secilensehir = value;
          });
        },
        // child: Text(_secilensehir!),
        itemBuilder: (BuildContext context) {
          return liste
              .map((sehir) => PopupMenuItem(
                    child: Text(sehir),
                    value: sehir,
                  ))
              .toList();
        },
      ),
    );
  }
}
