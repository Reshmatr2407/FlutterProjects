import 'package:flutter/material.dart';

class Displayname extends StatefulWidget {
  const Displayname({super.key});

  @override
  State<Displayname> createState() => _DisplaynameState();
}

class _DisplaynameState extends State<Displayname> {
  final _txtvalue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Welcome",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                controller: _txtvalue,
                decoration: InputDecoration(
                  labelText: "Enter Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 20,

                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _txtvalue.text ="Sunu";
                });
              }, child:const Text("Submit") )
          ],
        ),
      )),
    );
  }
}