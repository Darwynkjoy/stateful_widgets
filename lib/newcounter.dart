import 'package:flutter/material.dart';

class newCounter extends StatefulWidget{
  @override
  State<newCounter> createState()=> _NewCounterState();
}

class _NewCounterState extends State<newCounter>{
  int count=0;

  void incrementCounter(){
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget Example"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("You have pushed the button this manny times"),),
          SizedBox(height: 20,),
          Center(child: Text("$count"),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () => incrementCounter(),
      child: Text("+")),
    );
  }
}