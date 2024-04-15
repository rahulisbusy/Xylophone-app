import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int num){
    final player=AudioCache();
    player.play('note$num.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Xylophone"),
          centerTitle: true,
        ), 
        body: SafeArea(
          child: Column(
           children: [
            Expanded(
              child: TextButton(

                 style: TextButton.styleFrom(
                   backgroundColor: Colors.red,
                 ),
                 onPressed: (){
                   final player=AudioCache();
                   playsound(1);

                 },
                child: Container(),
               ),
            ),
             Expanded(
               child: TextButton(

                 style: TextButton.styleFrom(
                   backgroundColor: Colors.orange,
                 ),
                 onPressed: (){
                  playsound(2);
                 },
                 child: Container(),
               ),
             ),
             Expanded(
               child: TextButton(

                 style: TextButton.styleFrom(
                   backgroundColor: Colors.yellow,
                 ),
                 onPressed: (){
                   playsound(3);

                 },
                 child: Container(),
               ),
             ),
             Expanded(
               child: TextButton(

                 style: TextButton.styleFrom(
                   backgroundColor: Colors.green,
                 ),
                 onPressed: (){
                   playsound(4);

                 },
                 child: Container(),
               ),
             ),
             Expanded(
                child: TextButton(

                 style: TextButton.styleFrom(
                   backgroundColor: Colors.blue,
                 ),
                 onPressed: (){
                   playsound(5);

                 },
                 child: Container(),
             ),
              ),
             Expanded(
                child: TextButton(

                 style: TextButton.styleFrom(
                   backgroundColor: Colors.indigo,
                 ),
                 onPressed: (){
                   playsound(6);

                 },
                 child: Container(),
             ),
              ),
             Expanded(
                child: TextButton(

                 style: TextButton.styleFrom(
                   backgroundColor: Colors.deepPurple,
                 ),
                 onPressed: (){
                   playsound(7);

                 },
                 child: Container(),
             ),
              ),
           ],
          ),
        ),
      ),
    );
  }
}
