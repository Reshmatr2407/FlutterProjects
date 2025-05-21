

import 'package:flutter/material.dart';

class Radiolist extends StatefulWidget {
  const Radiolist({super.key});

  @override
  State<Radiolist> createState() => _RadiolistState();
}

class _RadiolistState extends State<Radiolist> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Radio Button",
        style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Gender Selection",
            style: TextStyle(
              color: Colors.deepPurpleAccent,fontSize: 20
            ),),


          RadioListTile( 
            title: const Text("Male"),
            value: "Male", groupValue: gender, 
            onChanged:(String? value ){
            setState(() {
              gender= value;
            });
            }
            ),



            RadioListTile( 
            title: const Text("Female"),
            value: "Female", groupValue: gender, 
            onChanged:(String? value ){
            setState(() {
              gender= value;
            });
            }
            ),
            RadioListTile( 
            title: const Text("Others"),
            value: "Others", groupValue: gender, 
            onChanged:(String? value ){
            setState(() {
              gender= value;
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
             backgroundColor: Colors.greenAccent,
             content: Text("Selected Gender is $gender"),
             ));
            }, child: const Text("CLICK"))
          ],
        ),
      )),
    );
  }
}