import 'package:flutter/material.dart';
import 'package:solde_app/pages/mainPage.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(
            title: 'E/commerce',
          ),
      // '/detail': (_) => ProductDetailPage()
    };
  }
}
