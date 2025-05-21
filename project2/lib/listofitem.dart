import 'package:flutter/material.dart';
import 'package:project2/listofitem2.dart';

class Listofitem extends StatelessWidget {
  Listofitem({super.key});
  List<String> foodnames = ['Icecream', 'Fruits', 'Chicken', 'Vegitables'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: foodnames.length,
              itemBuilder: (context, index) => TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                       MaterialPageRoute(            
                        builder: (context)=>
                        Listofitem2(listname:foodnames[index]))
                    );
                  },
                  child: Text(
                    foodnames[index],
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )))),
    );
  }
}
