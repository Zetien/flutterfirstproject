import 'package:flutter/material.dart';

class Contador2 extends StatefulWidget {
  const Contador2({Key? key}) : super(key: key);

  @override
  State<Contador2> createState() => _Contador2State();
}

class _Contador2State extends State<Contador2> {
  int count = 10;

  @override
  Widget build(BuildContext context) {
    const sizeTextColorA = TextStyle(fontSize: 24, color: Colors.white);
    const sizeTextColorB = TextStyle(fontSize: 24, color: Colors.red);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 3, 3),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 75, 4),
        title: const Text("Contador"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Number push", style: sizeTextColorA),
          Text('$count', style: sizeTextColorB),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.access_alarms),
        onPressed: () {
          showMessage();
          contadorIncremeta();
        },
      ),
    );
  }

  void showMessage() {
    print('Hi, Again');
  }

  void contadorIncremeta() {
    setState(() {
      count++;
    });
  }
}
