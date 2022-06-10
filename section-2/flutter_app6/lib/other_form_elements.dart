import 'package:flutter/material.dart';

class OtherFormElementsUse extends StatefulWidget {
  const OtherFormElementsUse({Key? key}) : super(key: key);

  @override
  State<OtherFormElementsUse> createState() => _OtherFormElementsUseState();
}

class _OtherFormElementsUseState extends State<OtherFormElementsUse> {
  bool checkBoxState = false;
  String sehir = '';
  bool switchstate = false;
  double sliderdeger = 10;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CheckboxListTile(
              value: checkBoxState,
              onChanged: (value) {
                setState(() {
                  checkBoxState = value!;
                });
              },
              activeColor: Colors.blue.shade400,
              title: Text("ChexboxTile text"),
              subtitle: Text("Chexbox Tile subtext"),
              selected: true,
              secondary: Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RadioListTile(
              value: "Ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger.toString();
                });
              },
              secondary: Icon(Icons.map),
              title: Text("Ankara"),
              subtitle: Text("Ankara sehri"),
              selectedTileColor: Colors.purple.shade400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RadioListTile(
              value: "İstanbul",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger.toString();
                });
              },
              secondary: Icon(Icons.map),
              title: Text("İstanbul"),
              subtitle: Text("İstanbul sehri"),
              selectedTileColor: Colors.purple.shade400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RadioListTile(
              value: "Edirne",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger.toString();
                });
              },
              secondary: Icon(Icons.map),
              title: Text("Edirne"),
              subtitle: Text("Edirne sehri"),
              selectedTileColor: Colors.purple.shade400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SwitchListTile(
              value: switchstate,
              onChanged: (state) {
                setState(() {
                  switchstate = state;
                });
              },
              activeColor: Colors.pink.shade400,
              title: Text("Switch Tile text"),
              subtitle: Text("Switch Tile text"),
              secondary: Icon(Icons.adb_outlined),
            ),
          ),
          Text("Degeri sliderdan seçiniz "),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
              value: sliderdeger,
              onChanged: (value) {
                setState(() {
                  sliderdeger = value;
                });
              },
              min: 10,
              max: 100,
              activeColor: Colors.orange.shade400,
              label: sliderdeger.toString(),
              divisions: 10,
            ),
          )
        ],
      ),
    );
  }
}
