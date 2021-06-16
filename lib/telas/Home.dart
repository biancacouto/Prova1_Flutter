import 'package:flutter/material.dart';
import 'package:prova1_pdm/telas/tela_anfibio.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        title: Text("Escolha uma Classe:"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TelaAnfibio(escolha: "Anfibio")),
                      );
                    },
                    child: Text(
                      "Anfíbio",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaAnfibio(
                                  escolha: 'Reptil',
                                )),
                      );
                    },
                    child: Text(
                      "Reptil",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaAnfibio(
                                  escolha: 'Ave',
                                )),
                      );
                    },
                    child: Text(
                      "Ave",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaAnfibio(
                                  escolha: 'Mamifero',
                                )),
                      );
                    },
                    child: Text(
                      " Mamifero",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 300.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaAnfibio(
                                  escolha: 'Peixe',
                                )),
                      );
                    },
                    child: Text(
                      " Peixe",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
