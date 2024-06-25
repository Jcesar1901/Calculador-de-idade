import 'package:flutter/material.dart';
class Argumentos {
  int idade;
  Argumentos(this.idade);
}

class ExibeAno extends StatefulWidget {
  const ExibeAno({super.key});

  @override
  State<ExibeAno> createState() => _ExibeAnoState();
}

class _ExibeAnoState extends State<ExibeAno> {
  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
          title:const Center(
            child:
              Text("Calcula Idade",
                style: TextStyle(color: Colors.black),)
          ),
          backgroundColor:Colors.green
        ),
        body: Text("Sua idade é ${argumentos.idade}"),
      ),
    );
  }
}