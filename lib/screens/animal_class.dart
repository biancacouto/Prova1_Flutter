import 'package:flutter/material.dart';

import '../../mockdata/animal_classes.dart';

import '../../components/animal_item.dart';

class AnimalClassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        title: Text("Escolha uma Classe de Animais"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: ListView.builder(
          itemCount: animalClassList.length,
          itemBuilder: (context, index) {
            return Card(child: AnimalItem(animalClassList[index]));
          },
        ),
      ),
    );
  }
}
