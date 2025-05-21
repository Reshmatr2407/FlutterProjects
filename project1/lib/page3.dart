import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 51, 47),
        title: const Text(
          "Welcome To My Iphone Kada",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.person_2_rounded)),
            IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.add_a_photo)),
          ],
        ),
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.padding_outlined)),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.contact_mail)),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.call_end_outlined)),
        ],
      ),
      body: const SafeArea(
        
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image(
                  image: AssetImage("assets/iphone14.jpg"),
                  height: 300,
                  width: 800,
                ),
                 Image(
                  image: AssetImage("assets/iphone16pro.jpg"),
                  height: 300,
                  width: 800,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
