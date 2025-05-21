
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
   BmiResult({super.key,required this.bmi,required this.bmi_res,required this.image});
 String bmi_res="";
 double bmi;
 String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("BMI Calculator",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
             Text(bmi.toString(),
             style: const TextStyle(fontSize: 17),),
             Text(bmi_res.toString(),style: const TextStyle(color: Colors.red,fontSize: 21,fontWeight: FontWeight.bold),),
             Image(image: AssetImage(image))
          ],
        ),
      )),
    );
  }
}