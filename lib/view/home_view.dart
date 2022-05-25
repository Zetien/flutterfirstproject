import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 75, 4),
        title: const Text("Zetien App"),
      ),
      body: const Center(
        child: Text(
          "Zetien's, Bio",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
