
import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  Instagram({super.key});

  final List<String> _img = [
    "assets/dora.jpg",
    "assets/c3.jpg",
    "assets/mickey.jpg",
    "assets/c1.jpg",
    "assets/pockymon.jpg",
    "assets/tom.jpg",
    
  ];

  final List<String> _name=["@dfghv_fgh","@fyuhv_fg","@ghvvn_fff","@hvb_fdyh","@yuiokhg_fggh"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 214, 23, 87),
        title: const Text(
          "Instagram",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 245, 231, 187),
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _img.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundImage:AssetImage(_img[index]) ,
                  radius: 60,
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: _name.length,
                  itemBuilder: (context, index) =>  Carditems(name: _name[index],img: _img[index])))
        ],
      )),
    );
  }
}

class Carditems extends StatelessWidget {
  String name="";
  String img="";
   Carditems({super.key,required this.name,required this.img});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child:  ListTile(
              title: Text(name),
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 224, 130, 161),
                backgroundImage: AssetImage(img),
              ),
            ),
          ),
           Image(
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
            image: AssetImage(img),
          )
        ],
      ),
    );
  }
}

