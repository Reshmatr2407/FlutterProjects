import 'package:flutter/material.dart';
import 'package:project1/page2.dart';
import 'package:project1/page3.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 213, 162, 9),
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
            
        children: [
          const SizedBox(
            height: 20,

          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: const Color.fromARGB(255, 83, 66, 13),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const Page2()));
              },
              child: const Text("move to page1")),

          const SizedBox(
            height: 20,
          ),
          
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: const Color.fromARGB(255, 83, 66, 13),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Page2(),
                ));
              },
              child: const Text("page2")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: const Color.fromARGB(255, 83, 66, 13),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Page3(),));
              },
              child: const Text("page3"))
        ],
      )),
    );
  }
}
