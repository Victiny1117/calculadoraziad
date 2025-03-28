import 'package:flutter/material.dart';
import '../logic/calculator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Calculator calc = Calculator();
  String screen = '0';
  String sign = '';
  double num1 = 0; 
  double num2 = 0;

  void addChar(String char) {
    setState(() {
      if(char == "." && screen == "0") {
        screen = "0.";
      } else if (screen == "0") {
        screen = char;
      } else {
        screen += char;
      }
    });
  }

  void eraseLastChar() {
    setState(() {
      screen = screen.isNotEmpty ? screen.substring(0, screen.length - 1) : '0';
    });
  }

  void deleteEverything() {
    setState(() {
      screen = '0';
      num1 = 0;
      num2 = 0;
      sign = '';
    });
  }

 double result(double num1, double num2, String sign) {
    if (sign != '') {
      return calc.equals(num1, num2, sign);
    } else {
      return num1;
    }
  }

  // magia
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      appBar: AppBar(
        title: Text(
        "Calculadora",
      style: TextStyle(
        color:  Color.fromARGB(255, 221, 221, 221),
            fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      ),
      
      
      backgroundColor: Color.fromARGB(255, 29, 29, 29),
      body: Stack(
        children: [
          Positioned(
            top: 50, right: 50,
            child:
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.transparent
              ),
              alignment: Alignment.center,
              child: 
              Text(screen, style: TextStyle(
            color: Color.fromARGB(255, 221, 221, 221),
            fontSize: 36,
                  ),
                ),
              ),
            ),
          
          Positioned(
            top: 170, left: 60,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("1"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("1"),
            )
            ),
            Positioned(
            top: 170, left: 140,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("2"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("2"),
            )
            ),

            Positioned(
            top: 170, left: 220,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("3"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("3"),
            )
            ),

            Positioned(
            top: 255, left: 60,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("4"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("4"),
            )
            ),

            Positioned(
            top: 255, left: 140,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("5"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("5"),
            )
            ),

            Positioned(
            top: 255, left: 220,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("6"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("6"),
            )
            ),

            Positioned(
            top: 340, left: 60,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("7"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("7"),
            )
            ),

            Positioned(
            top: 340, left: 140,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("8"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("8"),
            )
            ),

            Positioned(
            top: 340, left: 220,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("9"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("9"),
            )
            ),

            Positioned(
            top: 425, left: 60,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("0"),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("0"),
            )
            ),

            Positioned(
            top: 425, left: 140,
            child: 
            FloatingActionButton(
              onPressed: () => addChar("."),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("."),
            )
            ),

            Positioned(
            top: 425, left: 220,
            child: 
            FloatingActionButton(
              onPressed: () { setState(() {
                num2 = double.parse(screen);
                screen = result(num1, num2, sign).toString();
              }); },
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("="),
            )
            ),

            Positioned(
            top: 170, left: 300,
            child: 
            FloatingActionButton(
              onPressed: () { setState(() {
                sign = '+'; 
                num1 = double.parse(screen);
                screen = "0"; 
              }); },
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("+"),
            )
            ),

            Positioned(
            top: 255, left: 300,
            child: 
            FloatingActionButton(
              onPressed: () { setState(() {
                sign = '-'; 
                num1 = double.parse(screen);
                screen = "0"; 
              }); },
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("-"),
            )
            ),

            Positioned(
            top: 340, left: 300,
            child: 
            FloatingActionButton(
              onPressed: () { setState(() {
                sign = '*'; 
                num1 = double.parse(screen);
                screen = "0"; 
              }); },
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("*"),
            )
            ),

            Positioned(
            top: 425, left: 300,
            child: 
            FloatingActionButton(
              onPressed: () { setState(() {
                sign = '/'; 
                num1 = double.parse(screen);
                screen = "0"; 
              }); },
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("/"),
            )
            ),

            Positioned(
            top: 510, left: 300,
            child: 
            FloatingActionButton(
              onPressed: () { setState(() {
                sign = '%'; 
                num1 = double.parse(screen);
                screen = "0"; 
              }); },
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("%"),
            )
            ),

            Positioned(
            top: 510, left: 220,
            child: 
            FloatingActionButton(
              onPressed: () => eraseLastChar(),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("DE"),
            )
            ),

            Positioned(
            top: 510, left: 140,
            child: 
            FloatingActionButton(
              onPressed: () => deleteEverything(),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Text("CL"),
            )
            ),
         ],
       ),
     ); 
  }
}