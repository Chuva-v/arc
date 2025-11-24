import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp> {
  int contador = 0;
  void increment() {
    if (contador < 50) {
      setState(() {
        contador++;
      });
    }
  }

  void decrement() {
    if (contador > 0) {
      setState(() {
        contador--;
      });
    }
  }

  Color mudarcor() {
    if (contador < 15) {
      return const Color.fromARGB(255, 20, 108, 180);
    } else if (contador < 30) {
      return const Color.fromARGB(255, 30, 168, 11);
    } else {
      return const Color.fromARGB(255, 177, 30, 19);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: const Text('testando'),
        ),
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          color: mudarcor(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 60,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                        blurRadius: 15,
                        offset: Offset(10, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(style: TextStyle(fontSize: 80), '$contador'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 50,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: ElevatedButton(
                        onPressed: decrement,
                        child: const Text('-'),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: ElevatedButton(
                        onPressed: increment,
                        child: const Text('+'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
