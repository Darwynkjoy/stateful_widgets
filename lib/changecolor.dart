import 'dart:math';
import 'package:flutter/material.dart';

class Changecolor extends StatefulWidget{
  @override
  State<Changecolor> createState()=> _Changecolorstate();
}
class _Changecolorstate extends State<Changecolor>{
  Color backgroundColor=Colors.grey;
  Color textColor=Colors.black;
  List<Color>colorList=[
    Colors.black,
    Colors.white,
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.red,
    Colors.yellow,
  ];
  void Changecolor(){
    setState(() {
      int index=Random().nextInt(colorList.length);
      backgroundColor=colorList[index];
      textColor=colorList[index+1];
    });
  }
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: Changecolor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            SizedBox(height: 250,),
            Center(child: Text("Tap to change color",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:textColor),)),
          ],
        ),
      ),
    );
  }
}