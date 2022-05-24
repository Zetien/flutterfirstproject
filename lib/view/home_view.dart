import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 75, 4),
        title: Text("Zetien App"),
      ),
      body: Center(
        child: Text(
          "Zetien's, Bio",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
