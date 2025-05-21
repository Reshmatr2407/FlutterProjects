import 'package:flutter/material.dart';

class Listofitem2 extends StatelessWidget {
  String listname = "";
  Listofitem2({super.key, required this.listname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              listname,
              style: const TextStyle(
                  color: Colors.purple, fontWeight: FontWeight.bold,fontSize: 40),
            )
          ],
        ),
      )),
    );
  }
}
