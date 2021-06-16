import 'package:flutter/material.dart';

import '../mockdata/animal.dart';

import '../models/animal.dart';
import '../models/animal_class.dart';

import '../screens/animal.dart';

class AnimalItem extends StatelessWidget {
  final AnimalClass animalClass;

  const AnimalItem(this.animalClass);

  void _listVehicles(BuildContext context) {
    List<Animal> animals = [];

    animals.addAll(
        listaAnimais.where((animal) => animal.idClasse == animalClass.id));

    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return AnimalScreen(animals: animals);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _listVehicles(context);
      },
      child: Container(
        padding: EdgeInsets.all(24),
        child: Text(animalClass.name),
      ),
    );
  }
}
