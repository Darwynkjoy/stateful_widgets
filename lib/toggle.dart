import 'package:flutter/material.dart';

class Toggle extends StatefulWidget{
  @override
  State<Toggle> createState()=>_ToggleState();
}

class _ToggleState extends State<Toggle>{
  bool _ison=false;

  void _ToggleSwitch(){
    setState(() {
      _ison=!_ison;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Toggle example"),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(_ison?"ON":"OFF",style: TextStyle(fontSize: 30),)),
          Center(child: ElevatedButton(onPressed: _ToggleSwitch, child: Text(_ison?"turn OFF":"turn ON")))
        ],
      ),
    );
  }
}