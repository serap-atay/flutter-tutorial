import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class listviewuse extends StatelessWidget {
  listviewuse({Key? key}) : super(key: key);
  List<Student> liste = List.generate(
      5000,
      (index) => Student(
          index, "Ogrenci adi :${index + 1}", "Ogrenci soyadi :${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Listesi"),
      ),
      body: listviewseperated(),
    );
  }

  ListView listviewseperated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var s = liste[index];
        return Card(
          color: index % 2 == 0 ? Colors.pink.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red.shade400;
                EasyLoading.instance.textColor = Colors.yellow.shade200;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue.shade400;
              }
              EasyLoading.showToast("Eleman tıklandı",
                  duration: Duration(seconds: 3),
                  toastPosition: EasyLoadingToastPosition.bottom,
                  dismissOnTap: true);
              print("Eleman Tıklandı");
            },
            onLongPress: () {
              alertDialog(context, s);
            },
            title: Text(s.name),
            subtitle: Text(s.surname),
            leading: CircleAvatar(
              child: Text(s.id.toString()),
            ),
          ),
        );
      },
      itemCount: liste.length,
      separatorBuilder: (context, index) {
        var index2 = index + 1;
        if (index2 % 4 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.pink.shade400,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView listwiew1() {
    return ListView(
      children: liste
          .map((Student s) => ListTile(
                title: Text(s.name),
                subtitle: Text(s.surname),
                leading: CircleAvatar(
                  child: Text(s.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void alertDialog(BuildContext context, Student s) {
    // showCupertinoDialog(context: context, builder: builder) => IOS için
    showDialog(
        barrierDismissible: false, // boşuğa dokununca dialogdan çıkmayı önler
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("${s.name} ${s.surname}"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Deniz yılmaz" * 100),
                  Text("Deniz yılmaz" * 100),
                  Text("Deniz yılmaz" * 100),
                ],
              ),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context); //bir önceki contexte gider
                      },
                      child: Text("Kapat")),
                  TextButton(onPressed: () {}, child: Text("Tamam")),
                ],
              )
            ],
          );
        });
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
