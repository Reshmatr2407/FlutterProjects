import 'package:flutter/material.dart';


class Buttonpage extends StatefulWidget {
  const Buttonpage({super.key});

  @override
  State<Buttonpage> createState() => _ButtonpageState();
}

class _ButtonpageState extends State<Buttonpage> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.people_outline)),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.home))
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Click the button you like",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.red),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                   setState(() {
                     count++;
                   });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white
                ),
                child: const Text("ADD"),),



            //     ElevatedButton(onPressed: (){
            //        setState(() {
            //          count--;
            //        });
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.black,
            //       foregroundColor: Colors.white
            //     ),
            //     child: const Text("SUB"),),
            //     ElevatedButton(onPressed: (){
            //        setState(() {
            //          count=0;
            //        });
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.black,
            //       foregroundColor: Colors.white
            //     ),
            //     child: const Text("RES"),)
             ],
            )
          ],
        ),
      )),
    );
  }
}




















