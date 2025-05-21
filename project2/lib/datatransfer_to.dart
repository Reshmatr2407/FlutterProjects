import 'package:flutter/material.dart';

class DatatransferTo extends StatefulWidget {
  
 String name="",email="",phone="";
   DatatransferTo({super.key,required this.name,required this.email,required this.phone});

  @override
  State<DatatransferTo> createState() => _DatatransferToState();
}

class _DatatransferToState extends State<DatatransferTo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Data Transfer To",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              "Hello..${widget.name}",
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
            Text(
              "${widget.email} is your email id",
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                 fontSize: 20
              ),
            ),
            Text(
              " ${widget.phone} is your phone number",
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                 fontSize: 20
              ),
            ),
          ],
        ),
      )),
    );
  }
}