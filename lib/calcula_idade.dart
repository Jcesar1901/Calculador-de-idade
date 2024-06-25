import 'package:flutter/material.dart';
import 'package:prova_p2/exibe_ano.dart';

class AppCalculaIdade extends StatefulWidget {
  const AppCalculaIdade({super.key});

  @override
  State<AppCalculaIdade> createState() => _AppCalculaIdadeState();
}

class _AppCalculaIdadeState extends State<AppCalculaIdade> {
  late int anoNasc;
  late int idade;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
        home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child:
              Text("Calcula Idade",
                style: TextStyle(color: Colors.black),)
          ),
          backgroundColor:Colors.green
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center (child: Text("Insira o ano de Nascimento:")),
          TextField(
            decoration:
              const InputDecoration(
                labelText: "Ano de Nascimento",
                icon: Icon(Icons.calendar_month)
              ),
              onChanged: (String text) {
                anoNasc = int.parse(text);
              },
            ),
            ElevatedButton(
              onPressed: () {
                idade = 2024 - anoNasc;
                Navigator.pushNamed(
                  context,
                    '/exibeAno',
                    arguments: Argumentos(idade));
                    },
              child: const Text('Calcular',)
            )
        ]
        )
        )
            );
}
}