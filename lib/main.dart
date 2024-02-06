import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp( const Diceapp());
}

class Diceapp extends StatefulWidget {
  const Diceapp({super.key});

  @override
  State<Diceapp> createState() => _DiceappState();}

class _DiceappState extends State<Diceapp> {
  int diceNummer1 = 1;
  int diceNummer2 = 6;
  @override
    Widget build(BuildContext context) {
   return MaterialApp(
  debugShowCheckedModeBanner: false,
   home: Scaffold(
    body:SafeArea(
      child: Container(
       color: Colors.lightBlue,
       width: double.infinity,
       height: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
          InkWell( onTap: (){
            setState(() {
              diceNummer1 = Random().nextInt(6)+1;
            });
          },child: Image.asset('assets/images/dice$diceNummer1.png',width: 150,)),
          InkWell( onTap:(){
            setState(() {
             diceNummer2 = Random().nextInt(6)+1; 
            });
          
          } ,child: Image.asset('assets/images/dice$diceNummer2.png',width: 150,)),
         ]
         ),
        ),
      )
     )
    )
   );
  }
}