import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({Key? key}) : super(key: key);
  
 
  
  @override
  Widget build(BuildContext context) {
    const siseText = TextStyle(fontSize: 24);
    
    int count = 10;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 241, 241),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 75, 4),
        title: const Text("Contador"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  <Widget>[
          const Text("Number push", style: siseText),
          Text(
            '$count', 
          style: siseText),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_alarms),
        onPressed: () {
          showMessage();
        },
      ),
    );
  }

  void showMessage() {
    print('Hi, Again');
  }
}
