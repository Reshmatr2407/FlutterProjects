

import 'package:flutter/material.dart';

class Textfileldpage2 extends StatefulWidget {
  const Textfileldpage2({super.key});

  @override
  State<Textfileldpage2> createState() => _Textfileldpage2State();
}

class _Textfileldpage2State extends State<Textfileldpage2> {
  bool _hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          "Welcome",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Enter Your Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                        
                    prefixIcon: const Icon(Icons.verified_user_sharp),
                    suffixIcon: const Icon(Icons.remove_red_eye_sharp)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                obscureText: _hide,
                decoration: InputDecoration(
                    labelText: "Enter Your Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    prefixIcon: const Icon(Icons.verified_sharp),
                    suffixIcon: IconButton(
                    icon:const Icon(Icons.remove_red_eye_sharp), 

                      onPressed: (){
                        setState(() {
                           if(_hide==true){
                          _hide=false;
                        }
                        else{
                          _hide=true;
                        }
                      }
                        );   
                  }
                  )
                        
                       
                    
                     ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
