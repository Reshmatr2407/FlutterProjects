import 'package:flutter/material.dart';

class Multiplication extends StatefulWidget {
  const Multiplication({super.key});

  @override
  State<Multiplication> createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  final _txtnumber = TextEditingController();
  String res = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // title: Text("Multiplication Table",
        // style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        // centerTitle:true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Multiplication table",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                  fontSize: 25),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                controller: _txtnumber,
                decoration: InputDecoration(
                    labelText: "Enter a Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                onPressed: () {
                  int number = int.parse(_txtnumber.text);
                  int multi = 0;
                  res = "";
                  for (int i = 1; i <= 10; i++) {
                    multi = i * number;
                    res += '$i * $number = $multi\n';
                  }
                  setState(() {
                    res;
                  });
                },
                child: const Text("Submit")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 20,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white
              ),
              onPressed: () {
                setState(() {
                  res="";
                  _txtnumber.text="";
                });
              },
             child: const Text("Clear")),
            const SizedBox(
              height: 20,
            ),
            Text(res,
            style: const TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),)
          ],
        ),
      )),
    );
  }
}




