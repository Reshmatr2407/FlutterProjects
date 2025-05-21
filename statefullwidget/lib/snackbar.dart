

import 'package:flutter/material.dart';

class Snackbar extends StatefulWidget {
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Snack Bar",
        style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration:const Duration(
                    milliseconds: 3000,
                  ),
                  action:
                  SnackBarAction(label: "Go Back", onPressed: (){}),
                  elevation:20,
                  behavior:SnackBarBehavior.floating,
                  backgroundColor:Colors.pink,
                  content: const Text("Example of snck bar"),
                ));
            }, child: const Text("Click"))
          ],
        ),
      )),
    );
  }
}