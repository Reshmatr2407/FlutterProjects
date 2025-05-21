import 'package:flutter/material.dart';
import 'package:project2/datatransfer_to.dart';

class DatatrasferFrom extends StatefulWidget {
  const DatatrasferFrom({super.key});

  @override
  State<DatatrasferFrom> createState() => _DatatrasferFromState();
}

class _DatatrasferFromState extends State<DatatrasferFrom> {
  final name=TextEditingController();
  final email=TextEditingController();
  final phn=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Data Transfer ",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            SizedBox(
              width: 400,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             SizedBox(
              width: 400,
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: "Enter Your Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             SizedBox(
              width: 400,
              child: TextField(
                controller: phn,
                decoration: InputDecoration(
                  labelText: "Enter Your Phone number",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                ),
              ),
            ),
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
                  MaterialPageRoute(builder: (context)=> DatatransferTo(
                    name:name.text,
                    email:email.text,
                    phone:phn.text,

                  ))
                );
              }, child: const Text("Submit"))
          ],
        ),
      )
      ),
    );
  }
}