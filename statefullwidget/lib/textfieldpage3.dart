import 'package:flutter/material.dart';

class Textfieldpage3 extends StatefulWidget {
  const Textfieldpage3({super.key});

  @override
  State<Textfieldpage3> createState() => _Textfieldpage3State();
}

class _Textfieldpage3State extends State<Textfieldpage3> {
 final _textvalue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 74, 42),
        title: const Text("TextField",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 500,
              child: 
              
              TextField(
                controller: _textvalue,
                 decoration: InputDecoration(
                  labelText: "Enter Name",
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                 ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             Text(
              _textvalue.text.toString()
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,),
              onPressed: (){
              setState((
              ) {
                _textvalue.text;
              });
            }, child:const Text("Submit") )
          ],
        ),
      )),
    );
  }
}