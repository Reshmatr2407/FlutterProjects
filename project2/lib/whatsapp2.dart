import 'package:flutter/material.dart';

class Whatsapp2 extends StatelessWidget {
   Whatsapp2({super.key,required this.title,required this.subtitle,required this.leading,required this.trailing});
 String title="";
  String subtitle="";
   String leading="";
    String trailing="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("WhatsApp",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
                title,
                style: const TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
              height: 30,
            ),
            Image(
              height: 400,
              width: 300,
              image: AssetImage(leading)),
              
               Text(
                subtitle,
                style: const TextStyle(
                  color: Color.fromARGB(255, 139, 109, 191),
                  fontSize: 20
                ),
              ),
              Text(
                trailing,
                style: const TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 13 
                ),
              ),
          ],
        ),
      )),
    );
  }
}