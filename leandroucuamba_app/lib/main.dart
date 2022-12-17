import 'package:flutter/material.dart';
import 'package:leandroucuamba_app/app/views/home_view.dart';


void main() {
  runApp(AppMoeda());
}

class AppMoeda extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       theme: ThemeData.dark(),
       highContrastDarkTheme: ThemeData.dark(),
       home: HomeView(),
     );
  }
}