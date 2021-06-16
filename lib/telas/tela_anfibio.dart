import 'package:flutter/material.dart';
import 'package:prova1_pdm/mockdata/animal.dart';
import 'package:prova1_pdm/models/animal.dart';

class TelaAnfibio extends StatefulWidget {
  final String escolha;

  const TelaAnfibio({required this.escolha});

  @override
  _TelaAnfibioState createState() => _TelaAnfibioState();
}

class _TelaAnfibioState extends State<TelaAnfibio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.escolha),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: pegarListaAnimalFiltrado.length,
        itemBuilder: (context, index) {
          return Card(
              elevation: 1,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                      pegarListaAnimalFiltrado[index].foto.toString(),
                      width: 100,
                      height: 100),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text(pegarListaAnimalFiltrado[index].especie.toString()),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(pegarListaAnimalFiltrado[index]
                      .nomeCientifico
                      .toString()),
                ),
              ]));
        },
      ),
    );
  }

  List<Animal> get pegarListaAnimalFiltrado {
    final List<Animal> ListaAnimalFiltrado = [];
    ListaAnimalFiltrado.addAll(listaAnimais.where(
      (tipos) => widget.escolha == tipos.idAnimal,
    ));
    return ListaAnimalFiltrado;
  }
}
