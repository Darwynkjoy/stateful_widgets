import 'package:flutter/material.dart';
class TextInputScreen extends StatefulWidget{
  @override
  State<TextInputScreen> createState()=> _TextinputscreenState();
}
class _TextinputscreenState extends State<TextInputScreen>{
  String _text='';
  void changeText(String val){
    setState(() {
      _text=val;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Text input screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: changeText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter text",
              ),
            ),
            SizedBox(height: 20,),
            Text("you typed:$_text",style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}