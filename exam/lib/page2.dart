

import 'package:exam/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  String name;
  
   Page2({super.key,required this.name});
  

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String? answer1;
  String? answer2;
  String? answer3;
  String? answer4;
  int score=0;
  String? answer5;
 final bool _submit = false;
  final formkey1 = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Question Paper",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(    
        child: Form(
          key: formkey1,
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,    
            children: [  
              const SizedBox(
                height: 10,
              )   ,   
              const Text(  
                "Q.Which is the national bird?",
                style: TextStyle(color: Colors.pink, fontSize: 20,fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                  title: const Text("Dog",
                  style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Dog",
                  groupValue: answer1,
                  onChanged: (String? value) {
                    setState(() {
                      answer1 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Peacock",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Peacock",
                  groupValue: answer1,
                  onChanged: (String? value) {
                    setState(() {
                      answer1 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Cat",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Cat",
                  groupValue: answer1,
                  onChanged: (String? value) {
                    setState(() {
                      answer1 = value;
                    });
                  }),
                    RadioListTile(
                  title: const Text("Cow",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Cow",
                  groupValue: answer1,
                  onChanged: (String? value) {
                    setState(() {
                      answer1 = value;
                    });
                  }),
                  const SizedBox(
                      height: 20,
                    ),
              
          
          
                  const SizedBox(
                    height: 40,
                  ),
          
                   const Text(  
                "Q.Which is the national animal?",
                style: TextStyle(color: Colors.pink, fontSize: 20,fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                  title: const Text("Tiger",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Tiger",
                  groupValue: answer2,
                  onChanged: (String? value) {
                    setState(() {
                      answer2 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Lion",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Lion",
                  groupValue: answer2,
                  onChanged: (String? value) {
                    setState(() {
                      answer2 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Elephant",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Elephant",
                  groupValue: answer2,
                  onChanged: (String? value) {
                    setState(() {
                      answer2 = value;
                    });
                  }),
                    RadioListTile(
                  title: const Text("Zeebra",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Zeebra",
                  groupValue: answer2,
                  onChanged: (String? value) {
                    setState(() {
                      answer2 = value;
                    });
                  }),
                  const SizedBox(
                      height: 20,
                    ),
            
                    const SizedBox(
                    height: 40,
                  ),
          
                   const Text(  
                "Q.Who is the father of nation?",
                style: TextStyle(color: Colors.pink, fontSize: 20,fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                  title: const Text("Mahathma Gandhi",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Mahathma Gandhi",
                  groupValue: answer3,
                  onChanged: (String? value) {
                    setState(() {
                      answer3 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Nehru",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Nehru",
                  groupValue: answer3,
                  onChanged: (String? value) {
                    setState(() {
                      answer3 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Subash chadrabos",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Subash chadrabos",
                  groupValue: answer3,
                  onChanged: (String? value) {
                    setState(() {
                      answer3 = value;
                    });
                  }),
                    RadioListTile(
                  title: const Text("Rajeev Gandhi",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Rajeev Gandhi",
                  groupValue: answer3,
                  onChanged: (String? value) {
                    setState(() {
                      answer3 = value;
                    });
                  }),
                  const SizedBox(
                      height: 20,
                    ),
             
          
                   const SizedBox(
                    height: 40,
                  ),
          
                   const Text(  
                "Q.Who is the prime minister of India ?",
                style: TextStyle(color: Colors.pink, fontSize: 20,fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                  title: const Text("Modhi",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Modhi",
                  groupValue: answer4,
                  onChanged: (String? value) {
                    setState(() {
                      answer4 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Pinarayi vijayan",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Pinarayi vijayan",
                  groupValue: answer4,
                  onChanged: (String? value) {
                    setState(() {
                      answer4 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Rahul Gandhi",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Rahul Gandhi",
                  groupValue: answer4,
                  onChanged: (String? value) {
                    setState(() {
                      answer4 = value;
                    });
                  }),
                    RadioListTile(
                  title: const Text("Suresh Gopi",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Suresh Gopi",
                  groupValue: answer4,
                  onChanged: (String? value) {
                    setState(() {
                      answer4 = value;
                    });
                  }),
                  const SizedBox(
                      height: 20,
                    ),
             
          
                     const SizedBox(
                    height: 40,
                  ),
          
                   const Text(  
                "Q.which is the national flower ?",
                style: TextStyle(color: Colors.pink, fontSize: 20,fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                  title: const Text("Lotus",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Lotus",
                  groupValue: answer5,
                  onChanged: (String? value) {
                    setState(() {
                      answer5 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Rose",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Rose",
                  groupValue: answer5,
                  onChanged: (String? value) {
                    setState(() {
                      answer5 = value;
                    });
                  }),
              RadioListTile(
                  title: const Text("Sun flower",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Sun flower",
                  groupValue: answer5,
                  onChanged: (String? value) {
                    setState(() {
                      answer5 = value;
                    });
                  }),
                    RadioListTile(
                  title: const Text("Jasmin",
                   style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                  value: "Jasmin",
                  groupValue: answer5,
                  onChanged: (String? value) {
                    setState(() {
                      answer5 = value;
                    });
                  }),
                  const SizedBox(
                      height: 20,
                    ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                   shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                ),
                  onPressed: () {
                    
                    const Map<String,String>correctanswers ={
                      'q1':'Peacock',
                      'q2':'Tiger',
                      'q3':'Mahathma Gandhi',
                      'q4':'Modhi',
                      'q5':'Lotus',
                    };
                    int score = 0;
                    if(answer1 == correctanswers['q1']) score++;
                    if(answer2 == correctanswers['q2']) score++;
                    if(answer3 == correctanswers['q3']) score++;
                    if(answer4 == correctanswers['q4']) score++;
                    if(answer5 == correctanswers['q5']) score++;
                     
                     if(formkey1.currentState!.validate()&&
                     answer1 != null &&
                     answer2 != null &&
                     answer3 != null &&
                      answer4 != null &&
                       answer5 != null ){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Page3(score: score, name: widget.name)));
                       }
                       else{
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                           elevation: 10,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.red,
                          content :Text("Answer all questions")));
                        setState(() {
                          score=0;
                        });
                       }
                  
                  },
                  
                  child: const Text("Submit")),

          
            ],
            
          
          ),
        ),
        
      )),
    );
  }
}