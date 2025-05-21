import 'package:flutter/material.dart';

class Textfieldpage extends StatefulWidget {
  const Textfieldpage({super.key});

  @override
  State<Textfieldpage> createState() => _TextfieldpageState();
}

class _TextfieldpageState extends State<Textfieldpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Text Field",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: const SafeArea(child: Center(
        child: Column(
          children: [
              SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter your name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                decoration:InputDecoration(
                  labelText: "Enter your employee code",
                  border: OutlineInputBorder()
                ) ,
              ),
            ),
              SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                decoration:InputDecoration(
                  labelText: "Enter your department",
                  border: OutlineInputBorder()
                ) ,
              ),
            ),
              SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter Your place",
                  border:OutlineInputBorder()
                ),
              ),
            )
          
          ],
        ),

      )),
    );
  }
}