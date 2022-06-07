import 'package:flutter/material.dart';

class DropdownButtonUse extends StatefulWidget {
  const DropdownButtonUse({Key? key}) : super(key: key);

  @override
  State<DropdownButtonUse> createState() => _DropdownButtonUseState();
}

class _DropdownButtonUseState extends State<DropdownButtonUse> {
  String? _secilensehir = null;
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
      child: DropdownButton<String>(
        hint: Text("Şehir seçiniz"),
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        items: liste.map(
          (String sehir) => 
            DropdownMenuItem(child: Text(sehir), value: sehir,),
        ).toList(),
        value: _secilensehir,
        onChanged: (String? secilensehir) {
          setState(() {
            _secilensehir = secilensehir;
          });
        },
      ),
    );
  }
}
