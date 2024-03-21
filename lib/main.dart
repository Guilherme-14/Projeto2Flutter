import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ); //MaterialApp
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  TextEditingController pesoController = new TextEditingController();
  TextEditingController alturaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora, IMC"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.refresh))
        ],

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            const Icon(
                Icons.person_outline,
                size: 120.0,
                color: Colors.blueGrey
            ), //Icon

             TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "PESO (KG)",
                labelStyle: TextStyle(color: Colors.blueGrey),
              ),
              //InputDecoration
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: pesoController,
            ), //TextField Peso

             TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura (cm)",
                labelStyle: TextStyle(color: Colors.blueGrey),
              ),
              //InputDecoration
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: alturaController,
            ), //TextField Altura

            //Botão para executar o calculo IMC]
            Padding(

              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
                      ),
                      child: const Text("Calcular")
                      
                  ) //ElevatedButton
              ), //SizedBox
            ), //Padding

            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0
              ),
            )
          ],
        ),
      ),
    );
  }
}