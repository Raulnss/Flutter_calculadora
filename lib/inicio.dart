import 'dart:math';

import 'package:calculadora_melhor/equacao3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class inicio extends StatefulWidget {
  const inicio({super.key});
  @override
  State<inicio> createState() => inicioState();
}
class inicioState extends State<inicio>  {
  double n1 = 0.0 ;
        double n2 = 0.0 ;
        String o = "";
        String p = "";
        String op = "";
        String resposta = "";
        String nn = "";
        double a = 0.0;
        double b = 0.0;
        double c = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text('funções adicionais'), accountEmail: Text('')),
            ElevatedButton(
              onPressed: () {
               setState(() {
                n1 = double.parse(o);
                double raizQuadrada = sqrt(n1);
                String n4 = raizQuadrada.toString();
                resposta = n4;
                n1 = 0;
                n2 = 0;
                o = "";
                p = "";
                op = "";
               });
            }, 
            child: Text("²√ x"),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
               setState(() {
                op = "√";
                resposta += op;
               });
              },
               child: Text('√'),
               ),
               SizedBox(
              height: 10,
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
               setState(() {
                n1 = double.parse(o);
            num delta = pow(n1, 2);
            String n4 = delta.toString();
            resposta = n4;
            n1 = 0;
            n2 = 0;
            o = "";
            p = "";
            op = "";
               });
              },
               child: Text('x²'),
               ),
               SizedBox(
              height: 10,
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
               setState(() {
               op = "^";
                resposta += op;
               });
              },
               child: Text('^'),
               ),
               SizedBox(
              height: 10,
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
               Navigator.of(context).push(
                 MaterialPageRoute(builder: (context) => equacao3()),
               );
              },
               child: Text('Equação 3°'),
               ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$resposta'),
            SizedBox(
          height: 20,
          width: 20,
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                 ElevatedButton(
          onPressed: () {
            setState(() {
              n1 = 0;
            n2 = 0;
            o = "";
            p = "";
            op = "";
            resposta = "";
            }); 
          },
          child: Text('C'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              op = " %de ";
            resposta += op;
            }); 
          },
          child: Text('%de'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (op == "")
            {
                o += "-";
                resposta = o;
            }
            else
            {
                p += "-";
                resposta =o + op + p;
            }
            });
          },
          child: Text('+/-'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (op == "")
            {
                o += ".";
                resposta = o;
            }
            else
            {
                p += ".";
                resposta =o + op + p;
            }
            });
          },
          child: Text(','),
        ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
             if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "7";
                resposta = o;
            }
            else
            {
                p += "7";
                resposta = o + op + p;
            }
            });
          },
          child: Text('7'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
             if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "8";
                resposta = o;
            }
            else
            {
                p += "8";
                resposta = o + op + p;
            }
            });
          },
          child: Text('8'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
           if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "9";
                resposta = o;
            }
            else
            {
                p += "9";
                resposta = o + op + p;
            }
            });
          },
          child: Text('9'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              op = "x";
            resposta+= op;
            });
          },
          child: Text('x'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
      ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
            if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "4";
                resposta = o;
            }
            else
            {
                p += "4";
                resposta = o + op + p;
            }
            });
          },
          child: Text('4'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
           if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "5";
                resposta = o;
            }
            else
            {
                p += "5";
                resposta = o + op + p;
            }
            });
          },
          child: Text('5'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
            if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "6";
                resposta = o;
            }
            else
            {
                p += "6";
                resposta = o + op + p;
            }
            });
          },
          child: Text('6'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              op = "-";
            resposta += op;
            });
          },
          child: Text('-'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
      ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
           if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "1";
                resposta = o;
            }
            else
            {
                p += "1";
                resposta = o + op + p;
            }
            });
          },
          child: Text('1'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
           if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "2";
                resposta = o;
            }
            else
            {
                p += "2";
                resposta = o + op + p;
            }
            });
          },
          child: Text('2'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
           setState(() {
            if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "3";
                resposta = o;
            }
            else
            {
                p += "3";
                resposta = o + op + p;
            }
           });
          },
          child: Text('3'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              op = "+";
            resposta+= op;
            });
          },
          child: Text('+'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
      ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
          height: 10,
          width: 10,
        ),
                ElevatedButton(
          onPressed: () {
            setState(() {
            if (nn != "" && op == "")
            {
                o += nn;
                resposta = o;
            } 
            else if (op == "" && nn == "")
            {
                o += "0";
                resposta = o;
            }
            else
            {
                p += "0";
                resposta = o+op + p;
            }
            }); 
          },
          child: Text('0'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              op = "%";
            resposta+= op;
            });
          },
          child: Text('%'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              op = "/";
            resposta+= op;
            });
          },
          child: Text('/'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (op == "+")
            {
              if (nn!="") {
                o = nn;
              }
                n1 = double.parse(o);
                n2 = double.parse(p);
                double n3 = n1 + n2 ;
                String n4 = n3.toString();
                resposta= n4;
                nn = n4;
                n1 = 0;
                n2 = 0;
                o = "";
                p = "";
                op = "";
            }
            else if (op == "-")
            {
                n1 = double.parse(o);
                n2 = double.parse(p);
                double n3 = n1 - n2;
                String n4 = n3.toString();
                resposta = n4;
                nn = n4;
                n1 = 0;
                n2 = 0;
                o = "";
                p = "";
                op = "";
            }
            else if (op == "*" || op == "x")
            {
                n1 = double.parse(o);
                n2 = double.parse(p);
                double n3 = n1 * n2  ;
                String n4 = n3.toString();
                resposta = n4;
                nn = n4;
                n1 = 0;
                n2 = 0;
                o = "";
                p = "";
                op = "";
            }
            else if (op == "/")
            {
                n1 = double.parse(o);
                n2 = double.parse(p);
                double n3 = n1 / n2;
                String n4 = n3.toString();
                resposta = n4;
                nn = n4;
                n1 = 0;
                n2 = 0;
                o = "";
                p = "";
                op = "";
            }
            else if (op == "%")
            {
                n1 = double.parse(o);
                n2 = double.parse(p);
                double n3 = n1 % n2  ;
                String n4 = n3.toString();
                resposta= n4;
                nn = n4;
                n1 = 0;
                n2 = 0;
                o = "";
                p = "";
                op = "";
            }
            else if (op == " %de ")
            {
                n1 = double.parse(o);
                n2 = double.parse(p);
                double resultado = n1 * (n2 / 100);
                String n4 = resultado.toString();
                resposta = n4;
                nn = n4;
                n1 = 0;
                n2 = 0;
                o = "";
                p = "";
                op = "";
            }
            else if (op == "√") {
              n1 = double.parse(o);
                n2 = double.parse(p);
                num raizCubica = pow(n2, 1.0 / n1);
                String n4 = raizCubica.toString();
                resposta = n4;
                nn = n4;
                n1 = 0;
                n2 = 0;
                o = "";
                p = "";
                op = "";
            }
            else if (op == "^") {
              n1 = double.parse(o);
                n2 = double.parse(p);
                num delta = pow(n1, n2);
                String n4 = delta.toString();
                resposta = n4;
                nn = n4;
                n1 = 0;
                n2 = 0;
                o = "";
                p = "";
                op = "";
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
          child: Text('='),
        ),
              ],
            ),
          ], 
        ),
      ),
    );
  }
}
  // if (nn != "" && op == "")
  //           {
  //               o += resposta;
  //               resposta = o;
  //           } 
  //           else if (op == "" && nn == "")
  //           {
  //               o += "7";
  //               resposta = o;
  //           }