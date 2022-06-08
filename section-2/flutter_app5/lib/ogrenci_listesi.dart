import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  OgrenciListesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int elemansayisi = ModalRoute.of(context)!.settings.arguments as int;
    Ogrenci _secilenogrenci;
    List<Ogrenci> liste = List.generate(
        elemansayisi,
        (index) => Ogrenci((index + 1), "Ogrenci adi :${index + 1}",
            "Ogrenci adi :${index + 1}"));

    return Scaffold(
      appBar: AppBar(
        title: Text("Ogrenci Listesi"),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, int index) {
            return ListTile(
              onTap: () {
                _secilenogrenci = liste[index];
                Navigator.of(context).pushNamed('/ogrencidetay' ,arguments: _secilenogrenci);
              },
              leading: CircleAvatar(child: Text(liste[index].id.toString())),
              title: Text(liste[index].name),
              subtitle: Text(liste[index].surname),
            );
          },
          itemCount: elemansayisi,
        ),
      ),
    );
  }
}

class Ogrenci {
  int id;
  String name;
  String surname;

  Ogrenci(this.id, this.name, this.surname);
}
