import 'package:flutter/material.dart';
import 'dart:math';

class equacao3 extends StatefulWidget {
  @override
  State<equacao3> createState() => equacao3State();
}
class equacao3State extends State<equacao3> {
  double A = 0.0;
  double B = 0.0;
  double C = 0.0;
  String resposta = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equação 3° grau'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  A = double.parse(value);
                },
                keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'A',
              border: OutlineInputBorder(),
            ),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  B = double.parse(value);
                },
                keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'B',
              border: OutlineInputBorder(),
            ),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  C = double.parse(value);
                },
                keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'C',
              border: OutlineInputBorder(),
            ),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num delta = pow(A, 2) - 4 * A * C;
                    if (delta < 0)
            {
                resposta ="A equação não possui raízes reais.";
            }
            else if (delta == 0)
            {
                double x = -B / (2 * A);
                String n4 = x.toString();
                resposta = "A equação possui uma raiz real: x = " + n4;
            }
            else if(delta > 0)
            {
                double x1 = (-B + sqrt(delta)) / (2 * A);
                double x2 = (-B - sqrt(delta)) / (2 * A);
                String n4 = x1.toString();
                String n5 = x2.toString();
                resposta = "A equação possui duas raízes reais: x1 =  " + n4 + " e x2 = " + n5;
            }
            else
            {
                  showDialog(
               context: context,
               builder: (context) {
                 return AlertDialog(
                   title: Text('Erro'),
                   content: Text('Ação inesperada.'),
                   actions: [
                     TextButton(
                       child: Text('OK'),
                       onPressed: () {
                         Navigator.of(context).pop();
                       },
                     ),
                   ],
                 );
               },
              );
            }
                  });
                }, 
              child: Text('calcular'),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Text('$resposta'),
            ],
          ),
        ),
        ),
      ),
    );
  }
}