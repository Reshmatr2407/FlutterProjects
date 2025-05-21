import 'package:flutter/material.dart';
import 'package:project2/datatransfer_from.dart';
import 'package:project2/listofitem.dart';
import 'package:project2/radiobtn_validation.dart';
import 'package:project2/validation1.dart';
import 'package:project2/validation2.dart';
import 'package:project2/validation3.dart';
import 'package:project2/whatsapp.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Column(children: [
        const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 20
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const DatatrasferFrom(
                   
                  ))
                );
              }, child: const Text("DatatrasferFrom")),
              const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 20
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const Validation1(
                   
                  ))
                );
              }, child: const Text("Validation1")),
          const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 20
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const Validation2(
                   
                  ))
                );
              }, child: const Text("Validation2")),
               const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 20
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const Validation3(
                   
                  ))
                );
              }, child: const Text("Validation3")),
               const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 20
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>  Whatsapp(
                   
                  ))
                );
              }, child: const Text("whatsapp")),
               const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 20
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>  Listofitem(
                   
                  ))
                );
              }, child: const Text("Listofitem")),
               const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 20
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>  RadiobtnValidation(
                   
                  ))
                );
              }, child: const Text("RadiobtnValidation")),
              
      ],)),
      

    );
  }

}