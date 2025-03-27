import 'package:flutter/material.dart';
import '../logic/calculator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Calculator calc = Calculator();
  String screen = '';

  void addChar(String char) {
    setState(() {
      screen += char;
    });
  }

  void eraseLastChar() {
    setState(() {
      screen = screen.isNotEmpty ? screen.substring(0, screen.length - 1) : '';
    });
  }

  void deleteEverything() {
    setState(() {
      screen = '';
    });
  }

  // magia
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Text(screen, style: TextStyle(fontSize: 36)),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4, // Botones de la calculadora
              children: [
                ...['1', '2', '3', '+'].map((btn) => ElevatedButton(
                  onPressed: () => addChar(btn),
                  child: Text(btn),
                )),
                ElevatedButton(onPressed: eraseLastChar, child: Text('DEL')),
                ElevatedButton(onPressed: deleteEverything, child: Text('AC')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}