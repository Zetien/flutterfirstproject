import 'package:flutter/material.dart';

class Contador2 extends StatefulWidget {
  const Contador2({Key? key}) : super(key: key);

  @override
  State<Contador2> createState() => _Contador2State();
}

class _Contador2State extends State<Contador2> {
  int count = 10;

  void incrementarValor() {
    setState(() {
      count++;
    });
  }

  void decrementarValor() {
    setState(() {
      count--;
    });
  }

  void reiniciarValor() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const sizeTextColorA = TextStyle(fontSize: 24, color: Colors.white);
    const sizeTextColorB = TextStyle(fontSize: 24, color: Colors.red);

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 3, 3, 3),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingCustomButonGroup(
            increase: incrementarValor,
            decrease: decrementarValor,
            reset: reiniciarValor));
  }
}

class FloatingCustomButonGroup extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const FloatingCustomButonGroup({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.exposure_plus_1),
          onPressed: () => increase(),
        ),
        FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => decrease(),
        ),
        FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.refresh),
          onPressed: () => reset(),
        ),
      ],
    );
  }
}
