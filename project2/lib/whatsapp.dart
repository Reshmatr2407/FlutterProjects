import 'package:flutter/material.dart';
import 'package:project2/whatsapp2.dart';

class Whatsapp extends StatelessWidget {
 Whatsapp ({super.key});

  List<Map<String, dynamic>> iphonedata = [
    {
      'title': 'Ashli',
      'subtitle': 'haii....',
      'trailing': '10.00 PM',
      'leading': "assets/me.jpg"
    },
    {
      'title': 'Sruthy',
      'subtitle': 'hai....',
      'trailing': '7.00 PM',
      'leading': "assets/mickey.jpg"
    },{
      'title': 'Ardra',
      'subtitle': 'haii....',
      'trailing': '6.00 PM',
      'leading': "assets/pockymon.jpg"
    },
    {
      'title': 'Sreesha',
      'subtitle': 'haii....',
      'trailing': '5.00 PM',
      'leading': "assets/tom.jpg"
    },
    {
      'title': 'Me',
      'subtitle': 'haii....',
      'trailing': '4.00 PM',
      'leading': "assets/dora2.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 59, 129, 62),
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: iphonedata.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=> Whatsapp2(
                title:iphonedata[index]['title'],
                subtitle:iphonedata[index]['subtitle'],
                leading:iphonedata[index]['leading'],
                trailing:iphonedata[index]['trailing'],
              ))
            );
          },
          child: Card(
            child: ListTile(
              title: Text(iphonedata[index]["title"]),
              subtitle: Text(iphonedata[index]["subtitle"]),
              trailing: Text(iphonedata[index]["trailing"]),
              leading: CircleAvatar(
                backgroundImage: AssetImage(iphonedata[index]["leading"]),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
