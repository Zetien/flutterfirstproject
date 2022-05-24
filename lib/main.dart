import 'package:flutter/material.dart';
import 'package:projectzetientest/view/home_view.dart';
import 'package:projectzetientest/view/color_change.dart';
import 'package:projectzetientest/view/imagen_test.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,     
      
      
      home: HomeView(

        
      )
      
    );
  }
}