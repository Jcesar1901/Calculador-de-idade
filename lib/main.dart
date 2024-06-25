import 'package:flutter/material.dart';
import 'calcula_idade.dart';
import 'exibe_ano.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const AppCalculaIdade(),
        '/exibeAno': (context) => const ExibeAno(),
      }
    );
    }
  }
  