import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  final int score;
  String name;
   Page3({super.key,required this.score,required this.name});

  @override
  State<Page3> createState() => _Page3State();
}
class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    String imagepath = widget.score >= 3 ? 'assets/passed.jpg': 'assets/failed.jpg';
    String resulttext = widget.score >=  3 ? 'Congratulation You Passed' : 'Sorry , You Failed';
    Color resultcolor = widget.score >=3 ? Colors.green : Colors.red;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Valuation",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hai...${widget.name}",
            style: const TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
            
            Text("Your Total score is: ${widget.score}",
            style: const TextStyle(color: Color.fromARGB(255, 25, 90, 143),fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(
              height: 40,
            ),
            Image.asset(imagepath),
            const SizedBox(
              height: 20,
            ),
            Text(resulttext,
            style: TextStyle(fontSize: 20,color: resultcolor),)
          ],
        ),
      )),
    );
  }
}




















