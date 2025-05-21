import 'package:flutter/material.dart';

class Sum extends StatefulWidget {
  const Sum({super.key});

  @override
  State<Sum> createState() => _SumState();
}

class _SumState extends State<Sum> {
  final sum = TextEditingController();
  final first = TextEditingController();
  final sec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Sum Of Two Numbers",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                controller: first,
                decoration: InputDecoration(
                    labelText: "Enter First Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                controller: sec,
                decoration: InputDecoration(
                    labelText: "Enter Second Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                onPressed: () {
              
                  int sum1 = int.parse(first.text) +int.parse(sec.text);

                  setState(() {
                    sum.text=sum1.toString();
                  });
                },
                child: const Text("Sum")),
                const SizedBox(
                  height: 20,
                ),
            SizedBox(
              width: 500,
              child: TextField(
                controller: sum,
                decoration: InputDecoration(
                    labelText: "Resultant Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            )
          ],
        ),
      )),
    );
  }
} 






