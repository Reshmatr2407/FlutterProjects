import 'package:flutter/material.dart';

class Reverse extends StatefulWidget {
  const Reverse({super.key});

  @override
  State<Reverse> createState() => _ReverseState();
}

class _ReverseState extends State<Reverse> {
   String rev ="";
  final result = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Reverse Of Number",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                  fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                controller: result,
                decoration: InputDecoration(
                  labelText: "Enter a Number",
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
                foregroundColor: Colors.white
              ),
              onPressed: (){
                String a = result.text;
                for(int i =a.length-1;i>=0;i--){
                  rev += a[i];
                }
                setState(() {
                  result.text=rev;
                });
              }, child: const Text("Reverse")),
              const SizedBox(
                height: 40,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white
                ),
                onPressed: (){
                setState(() {
                  rev="";
                  result.text="";
                });
              }, child: const Text("Clear"))
          ],
        ),
      )),
    );
  }
}






