import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 163, 20),
        title: const Text(
          "Welcome To Cartoon World",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: const Icon(Icons.person_2_outlined)),
        actions: [
          IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: const Icon(Icons.email_outlined)),
          IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: const Icon(Icons.contact_emergency_rounded)),
          IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: const Icon(Icons.home_outlined)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/pockymon.jpg"),
                      height: 240,
                      width: 315,
                    ),
                    TextButton(
                      
                      onPressed: () {}, child: const Text("Doremon",style: TextStyle(color: Color.fromARGB(255, 145, 112, 11), fontWeight: FontWeight.bold),)),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: const Color.fromARGB(255, 204, 164, 43),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                         child: const Text("Watch Now"))
                  ],
                ),
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/tom.jpg"),
                      height: 240,
                      width: 320,
                    ),
                    TextButton(onPressed: () {}, child: const Text("Jerry",style: TextStyle(color: Color.fromARGB(255, 145, 112, 11), fontWeight: FontWeight.bold),)
                    ),
                     ElevatedButton(
                        style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: const Color.fromARGB(255, 204, 164, 43),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                         child: const Text("Watch Now"))
                  ],
                ),
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/dora.jpg"),
                      height: 240,
                      width: 315,
                    ),
                    TextButton(onPressed: () {}, child: const Text("Dora",style: TextStyle(color: Color.fromARGB(255, 145, 112, 11), fontWeight: FontWeight.bold),)),
                     ElevatedButton(
                        style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: const Color.fromARGB(255, 204, 164, 43),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                         child: const Text("Watch Now"))
                  ],
                ),
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/mickey.jpg"),
                      height: 240,
                      width: 320,
                    ),
                    TextButton(onPressed: () {}, child: const Text("MickyMouse",style: TextStyle(color: Color.fromARGB(255, 145, 112, 11), fontWeight: FontWeight.bold),)),
                     ElevatedButton(
                        style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: const Color.fromARGB(255, 204, 164, 43),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                         child: const Text("Watch Now"))
                  ],
                )
              ],
            ),
             Row(
              children: [
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/pockymon.jpg"),
                      height: 240,
                      width: 315,
                    ),
                    TextButton(onPressed: () {}, child: const Text("Doremon",style: TextStyle(color: Color.fromARGB(255, 145, 112, 11), fontWeight: FontWeight.bold),)),
                     ElevatedButton(
                        style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: const Color.fromARGB(255, 204, 164, 43),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                         child: const Text("Watch Now"))
                  ],
                ),
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/tom.jpg"),
                      height: 240,
                      width: 320,
                    ),
                    TextButton(onPressed: () {}, child: const Text("Jerry",style: TextStyle(color: Color.fromARGB(255, 145, 112, 11), fontWeight: FontWeight.bold),)),
                     ElevatedButton(
                        style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: const Color.fromARGB(255, 204, 164, 43),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                         child: const Text("Watch Now"))
                  ],
                ),
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/dora.jpg"),
                      height: 240,
                      width: 315,
                    ),
                    TextButton(onPressed: () {}, child: const Text("Dora",style: TextStyle(color: Color.fromARGB(255, 145, 112, 11), fontWeight: FontWeight.bold),)),
                     ElevatedButton(
                        style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: const Color.fromARGB(255, 204, 164, 43),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                         child: const Text("Watch Now"))
                  ],
                ),
                Column(
                  children: [
                    const Image(
                      image: AssetImage("assets/mickey.jpg"),
                      height: 240,
                      width: 320,
                    ),
                    TextButton(onPressed: () {}, child: const Text("MickyMouse",style: TextStyle(color: Color.fromARGB(255, 145, 112, 11), fontWeight: FontWeight.bold),)),
                     ElevatedButton(
                        style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: const Color.fromARGB(255, 204, 164, 43),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                         child: const Text("Watch Now"))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
