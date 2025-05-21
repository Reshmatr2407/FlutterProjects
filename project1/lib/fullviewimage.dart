import 'package:flutter/material.dart';

class Fullviewimage extends StatelessWidget {
  const Fullviewimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 144, 116),
        title: const Text(
          "Full View Image",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/iphone16pro.jpg")),
            )),
      ),
    );
  }
}
