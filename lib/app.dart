import 'package:calculadora_melhor/inicio.dart';
import 'package:flutter/material.dart';

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData.dark(),
       home: inicio(),
    );
  }
  
}