

import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  String? marriage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Radio Button",
        style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(child: Column(
        children: [
          const Text("Relationship Status",
          style: TextStyle(
            color: Colors.deepPurpleAccent,fontSize: 20
          ),),
        RadioListTile( 
          title: const Text("Married"),
          value: "Married", groupValue: marriage, 
          onChanged:(String? value ){
          setState(() {
            marriage= value;
          });
          }
          ),
          RadioListTile( 
          title: const Text("Un-married"),
          value: "Un-married", groupValue: marriage, 
          onChanged:(String? value ){
          setState(() {
            marriage= value;
          });
          }
          ),
      
          ElevatedButton(
          onPressed: (){
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
           duration:const Duration(milliseconds: 3000),
           action: SnackBarAction(
           label: "Go Back",
           onPressed: (){},
           ),
           elevation: 10,
           behavior: SnackBarBehavior.floating,
           backgroundColor: Colors.teal,
           content: Text("Selected Gender is $marriage"),
           ));
          }, child: const Text("CLICK"))
        ],
      )),
    );
  }
}