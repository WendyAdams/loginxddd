import 'package:flutter/material.dart';
import 'package:loginxddd/Routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recetario',
      initialRoute: 'login',
      routes: routes,
    );
  }
}
