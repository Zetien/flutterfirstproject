import 'package:flutter/material.dart';
import 'package:projectzetientest/view/contador.dart';
import 'package:projectzetientest/view/count_screen.dart';
import 'package:projectzetientest/view/home_view.dart';
import 'package:projectzetientest/view/color_change.dart';
import 'package:projectzetientest/view/imagen_test.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return  const MaterialApp(
      debugShowCheckedModeBanner: false,     
            
      home: Contador2());
  }
}