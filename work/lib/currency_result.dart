import 'package:flutter/material.dart';

class CurrencyResult extends StatelessWidget {
  String name = "";
  String value = "";
  String image = "";
  double rs;

  CurrencyResult(
      {super.key,
      required this.name,
      required this.value,
      required this.rs,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          "Converted Currency",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "$rs Indian Rupees =${double.parse(value.toString()) * double.parse(rs.toString())} $name Currency ",
              style: const TextStyle(fontSize: 25, color: Colors.deepPurple),
            ),
            const SizedBox(
              height: 50,
            ),
            Image(image: AssetImage(image))
          ],
        ),
      )),
    );
  }
}

