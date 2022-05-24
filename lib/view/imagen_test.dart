import 'package:flutter/material.dart';

class ImageMeme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 75, 4),
        title: const Text("Zetien App"),
      ),
      body: Center(
        child: Stack(
          children: [
          Image.asset('assets/images/espera_meme.jpg'),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: const Text(
              "Zetien's, Bio",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ]),
      ),
    );
  }
}
