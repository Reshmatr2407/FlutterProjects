import 'package:flutter/material.dart';
import 'package:project1/instagram.dart';
import 'package:project1/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //to create an appbar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 165, 201),
        //to give title inside an appbar
        title: const Text(
          "My Page1",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        //for giving the buttons on left side in appbar
        leading: IconButton(
          color: Colors.black,
          onPressed: () {},
          icon: const Icon(Icons.person_2_outlined),
        ),

        //for giving the buttons on right side in appbar
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.forward),
          ),
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.account_box_sharp),
          ),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text("Example1 of text button"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Example2 of text button"),
            ),
            ElevatedButton(
             

              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page2(),));},
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6))),
              child: const Text("page2"),
            ),  ElevatedButton(
             

              onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  Instagram(),));},
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.cyan,
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6))),
              child: const Text("Instagram"),
            )
          ],
        ),
      ),
    );
  }
}
