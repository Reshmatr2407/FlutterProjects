import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  Instagram({super.key});

  final List<String> _img = [
    "assets/tom.jpg",
    "assets/c1.jpg",
    "assets/c3.jpg",
    "assets/dora2.jpg",
    "assets/mickey.jpg",
    "assets/pockymon.jpg"
  ];
  final List<String> _name = [
    "@rdyfg_hgf",
    "@tdfgh_456",
    "@sdftyg",
    "@fdfyghu",
    "@strydufiglkn"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 214, 23, 87),
        title: const Text(
          "Instagram",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // centerTitle: true,
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.home)),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.person)),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.info))
        ],
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
                  backgroundImage: AssetImage(_img[index]),
                  radius: 60,
                ),
              ),
            ),
          ),



          Expanded(
              child: ListView.builder(
                  itemCount: _name.length,
                  itemBuilder: (context, index) =>
                      Carditems(img: _img[index], name: _name[index])))
        ],
      )),
    );
  }
}

class Carditems extends StatefulWidget {
  String img = "";
  String name = "";
  Carditems({super.key, required this.img, required this.name});

  @override
  State<Carditems> createState() => _CarditemsState();
}





class _CarditemsState extends State<Carditems> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(widget.name),
            leading: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 224, 130, 161),
              backgroundImage: AssetImage(widget.img),
            ),
          ),


          Image(
            width: double.infinity,
            height: 350,
            // fit: BoxFit.cover,
            image: AssetImage(widget.img),
          ),


          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )),
                  const Text("Like")
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment, color: Colors.black)),
                  const Text("Comment")
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.blueAccent,
                      )),
                  const Text("Share")
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
