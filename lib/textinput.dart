import 'package:flutter/material.dart';

class Textinputscreen extends StatefulWidget{
  @override
  State<Textinputscreen> createstate()=> _TextinputscreenState();
}
class _TextinputscreenState extends State<Textinputscreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Text input screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: changeText,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "enter text",
            ),
          )
        ],
      ),
    );
  }
}