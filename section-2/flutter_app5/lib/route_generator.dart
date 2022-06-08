import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app5/green_page_app.dart';
import 'package:flutter_app5/main.dart';
import 'package:flutter_app5/ogrenci_detay.dart';
import 'package:flutter_app5/orange_page_app.dart';
import 'package:flutter_app5/red_page_app.dart';

import 'ogrenci_listesi.dart';

class RouteGenerators {
  static Route<dynamic>? _routeOlustur(Widget widget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          settings: settings, builder: (context) => widget);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return CupertinoPageRoute(
          settings: settings, builder: (context) => widget);
    } else {
      return MaterialPageRoute(
          settings: settings, builder: (context) => widget);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(Anasayfa(), settings);

      case '/redpage':
        return _routeOlustur(RedPage(), settings);

      case '/orangepage':
        return _routeOlustur(OrangePage(), settings);

      case '/greepage':
        return _routeOlustur(GreenPage(), settings);

      case '/ogrencilistesi':
        return _routeOlustur(OgrenciListesi(), settings);

      case '/ogrencidetay':
        var secilenogrenci = settings.arguments as Ogrenci;
        return _routeOlustur(
            OgrenciDetay(
              secilenogrenci: secilenogrenci,
            ),
            settings);

      default:
        MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: Text("404", style: TextStyle(fontSize: 34)),
              ),
              body: Center(
                child: Text(
                  "Sayfa bulunamadı",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            );
          },
        );
    }
  }
}
