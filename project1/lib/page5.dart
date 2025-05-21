import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  Page5({super.key});

  List<Map<String, dynamic>> iphonedata = [
    {
      'title': 'Iphone14',
      'subtitle': 'ewsrdtyuiopiuytresdfcvgpoiujhgf',
      'trailing': '\$40000',
      'leading': "assets/iphone14.jpg"
    },
    {
      'title': 'Iphone16',
      'subtitle': 'ewsrdtyuiopiuytresdfcvgpoiujhgf',
      'trailing': '\$60000',
      'leading': "assets/iphone16.jpg"
    },{
      'title': 'Iphone16pro',
      'subtitle': 'ewsrdtyuiopiuytresdfcvgpoiujhgf',
      'trailing': '\$65000',
      'leading': "assets/iphone16pro.jpg"
    },
    {
      'title': 'Nokia',
      'subtitle': 'ewsrdtyuiopiuytresdfcvgpoiujhgf',
      'trailing': '\$10000',
      'leading': "assets/Nokia.jpg"
    },
    {
      'title': 'Nokia',
      'subtitle': 'ewsrdtyuiopiuytresdfcvgpoiujhgf',
      'trailing': '\$10000',
      'leading': "assets/mickey.jpg"
    },{
      'title': 'Nokia',
      'subtitle': 'ewsrdtyuiopiuytresdfcvgpoiujhgf',
      'trailing': '\$10000',
      'leading': "assets/me.jpg"
    },{
      'title': 'Nokia',
      'subtitle': 'ewsrdtyuiopiuytresdfcvgpoiujhgf',
      'trailing': '\$10000',
      'leading': "assets/pockymon.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Page5",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: iphonedata.length,
        
        itemBuilder: (context, index) =>
         Card(
          child: ListTile(
            
            title: Text(iphonedata[index]["title"]),
            subtitle: Text(iphonedata[index]["subtitle"]),
            trailing: Text(iphonedata[index]["trailing"]),
            leading: CircleAvatar(
              backgroundImage: AssetImage(iphonedata[index]["leading"]),
            ),
          ),
        ),
      )),
    );
  }
}
