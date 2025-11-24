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
  bool clicou = false;
  bool doubleClicou = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: InkWell(
          onDoubleTap: () {
            setState(() {
              doubleClicou = !doubleClicou;
            });
          },
          onTap: () {
            setState(() {
              clicou = !clicou;
            });
          },
          child: AnimatedAlign(
            alignment: doubleClicou
                ? Alignment.center
                : clicou
                ? Alignment.topRight
                : Alignment.bottomLeft,
            duration: Duration(seconds: 2),
            curve: Curves.ease,
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.ease,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: clicou
                    ? Color.fromARGB(255, 70, 70, 192)
                    : Color.fromARGB(255, 74, 206, 118),
                borderRadius: clicou
                    ? BorderRadius.circular(100)
                    : BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
