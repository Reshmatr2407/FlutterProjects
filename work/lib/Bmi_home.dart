// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
import 'package:work1/Bmi_result.dart';

class BmiHome extends StatefulWidget {
  const BmiHome({super.key});

  @override
  State<BmiHome> createState() => _BmiHomeState();
}

class _BmiHomeState extends State<BmiHome> {
  final formkey = GlobalKey<FormState>();
  String? heightvalidation(){
   if(height.text.isEmpty){
    return "Please enter the height";
   }
   else{
   
    return null;
   }
  }
   String? weightvalidation(){
   if(weight.text.isEmpty){
    return "Please enter the weight";
   }
   else{
    return null;
   }
  }
  final height = TextEditingController();
  final weight = TextEditingController();
  double result = 0 ;
  String result1 ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "BMI calculation",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Form(
            key: formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 400,
                child: TextFormField(
                  validator: (context) => heightvalidation(),
                  controller: height,
                  decoration: InputDecoration(
                      labelText: "Enter Height",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              
              SizedBox(
                width: 400,
                child: TextFormField(
                  validator: (context) => weightvalidation(),
                  controller: weight,
                  decoration: InputDecoration(
                      labelText: "Enter Weight",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
              
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {   
                    if(formkey.currentState!.validate())    {
                     double hei = double.parse(height.text)/100;  
                     double wei = double.parse(weight.text);
                     String image="" ;
                     result = wei /(hei*hei);
                     if(result<18.5){
                      result1="Underweight";
                      image='assets/under.jpg';
                      
                     }
                    else if(result >=30){
                      result1="Overweight ";
                      image='assets/over.jpg';
          
                    }
                   else{
                    result1="Normal";
                    image='assets/normal1.jpg';
                   }
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BmiResult(
                          bmi: result,
                          bmi_res: result1, image: image,
          
                        )));
                  }},
                  child: const Text("Calculate"))
  
            ],
  
          ),
        ),
      )),
    );
  }
}
