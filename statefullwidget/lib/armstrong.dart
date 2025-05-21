import 'dart:math';


import 'package:flutter/material.dart';

class Armstrong extends StatefulWidget {
  const Armstrong({super.key});

  @override
  State<Armstrong> createState() => _ArmstrongState();
}

class _ArmstrongState extends State<Armstrong> {
  final num = TextEditingController();
  final res = TextEditingController();
  final start = TextEditingController();
  final end = TextEditingController();
  final res2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Armstrong Number",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(child:Center(
        child: Column(
          children: [
            const SizedBox(
                  height: 40,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
                SizedBox(
                  width: 300,
                  child: TextField(

                    controller: num,
                    decoration: InputDecoration(
                      labelText: "Enter a Number",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
              
                ),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                  ),
                  onPressed: 
                (){
                  int num1 = int.parse(num.text);
                  int temp=num1;
                  int length = num.text.length;
                  double result=0;
                  int rem;
                  for(int i =1;temp>0;i++){
                    rem = temp%10;
                    result+= pow(rem, length);
                    temp =temp~/10;

                  }
                  if(result==num1){
                    res.text="Armstrong";
                  }
                  else{
                    res.text="Not Armstrong";
                  }
                  setState(() {
                    res.text;
                  });
                }, child: const Text("Submit"))
              ],
            ),
            Text(res.text),
            const Divider(thickness: 2,color: Colors.black,),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: start,
                    decoration: InputDecoration(
                      labelText: "Enter the staring limit",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: end,
                    decoration: InputDecoration(
                      labelText: "Enter the ending limit",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                  ),
                  onPressed: (){
                    int up = int.parse(end.text);
                    int low = int.parse(start.text);
                   
                    for(int i =low ;i<=up;i++){
                     double result=0;
                      int temp;
                      temp=i;
                      for(int j=i;temp>0;j++){
                      int len = i.toString().length;
                        int rem = temp%10;
                        result += pow(rem, len);
                        temp=temp~/10;
                      }
                      if(result==i){
                                   res2.text+="$i  \n ";

                      }
                      
                    }
                    setState(() {
                      res2.text;
                    });

                  }, child: const Text("Submit")),
                  
              ],
            ),
            Text(res2.text)

          ],
        ),
      ) 
      ),
    );
  }
}