import 'package:flutter/material.dart';

class Whatsapp extends StatelessWidget {
   Whatsapp({super.key});

 final List<String> _names = ["Kathika", "Ashli", "Sruthy", "sree","Ammu"];
 final List<String> _message =["haii..","call me","i miss you","i love you...","good morning..."];
 final List<String> _image =["assets/iphone14.jpg","assets/iphone16.jpg","assets/iphone16pro.jpg","assets/me.jpg","assets/Nokia.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 94, 54),
        title: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) =>
                  CardElement(name: _names[index],message:_message[index],image:_image[index]),
                  itemCount: _names.length,
                  separatorBuilder: (context, index) => const Divider(thickness: 2,color:Colors.black,),
                  )),
    );
  }
}


class CardElement extends StatelessWidget {
  String name = "";
  String message = "";
  String image="";
  CardElement({super.key, required this.name,required this.message,required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 50,
       
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(name),
            subtitle:  Text(message),
            leading:  CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          )
        ],
      ),
    );
  }
}
