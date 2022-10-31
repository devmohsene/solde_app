import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solde_app/constants/theme.dart';
import 'package:solde_app/pages/mainPage.dart';
import 'package:solde_app/widgets/customRoute.dart';

import 'config/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        return CustomRoute<bool>(
            builder: (BuildContext context) => MainPage(
                  title: 'E/commerce',
                ));
        // if (settings.name.contains('detail')) {
        //   return CustomRoute<bool>(
        //       builder: (BuildContext context) => ProductDetailPage());
        // } else {
        //   return CustomRoute<bool>(
        //       builder: (BuildContext context) => MainPage());
        // }
      },
      initialRoute: "MainPage",
    );
  }
}
