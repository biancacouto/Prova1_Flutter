import 'package:flutter/material.dart';

import './screens/animal_class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prova 1 - PDM - Bianca Couto',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AnimalClassScreen(),
    );
  }
}
