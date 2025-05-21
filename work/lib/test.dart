import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Welcome to Page1",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.contact_emergency_rounded)),
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.person_2_outlined)),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.email_outlined)),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.home_max_outlined))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {}, 
              child: const Text("Example1 of textbutton")),
              TextButton(
              onPressed: () {}, 
              child: const Text("Example2 of textbutton")),
              ElevatedButton(
                onPressed: () {}, 
                child: const Text("Example of Elevated button"))
          ],
        )),
    );
  }
}
