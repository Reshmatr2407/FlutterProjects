import 'package:flutter/material.dart';

class Questionpaper extends StatefulWidget {
  const Questionpaper({super.key});

  @override
  State<Questionpaper> createState() => _QuestionpaperState();
}

class _QuestionpaperState extends State<Questionpaper> {
  String? question;

  String? question2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 207, 135, 129),
        title: const Text(
          "Question Paper",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(    
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,    
          children: [  
            const SizedBox(
              height: 10,
            )   ,   
            const Text(  
              "Q.What is the color of apple?",
              style: TextStyle(color: Colors.pink, fontSize: 20,fontWeight: FontWeight.bold),
            ),
            RadioListTile(
                title: const Text("Orange",
                style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                value: "Orange",
                groupValue: question,
                onChanged: (String? value) {
                  setState(() {
                    question = value;
                  });
                }),
            RadioListTile(
                title: const Text("Red",
                 style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                value: "Red",
                groupValue: question,
                onChanged: (String? value) {
                  setState(() {
                    question = value;
                  });
                }),
            RadioListTile(
                title: const Text("Yellow",
                 style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                value: "Yellow",
                groupValue: question,
                onChanged: (String? value) {
                  setState(() {
                    question = value;
                  });
                }),
                  RadioListTile(
                title: const Text("Pink",
                 style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                value: "Pink",
                groupValue: question,
                onChanged: (String? value) {
                  setState(() {
                    question = value;
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
                  if (question == "Red") {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(milliseconds: 3000),
                      action: SnackBarAction(
                        label: "Go Back",
                        onPressed: () {},
                      ),
                      elevation: 10,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.green,
                      content: const Text("Your answer is correct"),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(milliseconds: 3000),
                      action: SnackBarAction(
                        label: "Go Back",
                        onPressed: () {},
                      ),
                      elevation: 10,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.redAccent,
                      content: const Text("Your answer is wrong"),
                    ));
                  }
                  
                },
                
                child: const Text("Submit")),


                const SizedBox(
                  height: 40,
                ),

                 const Text(  
              "Q.What is the color of Orange?",
              style: TextStyle(color: Colors.pink, fontSize: 20,fontWeight: FontWeight.bold),
            ),
            RadioListTile(
                title: const Text("Orange",
                 style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                value: "Orange",
                groupValue: question2,
                onChanged: (String? value) {
                  setState(() {
                    question2 = value;
                  });
                }),
            RadioListTile(
                title: const Text("Red",
                 style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                value: "Red",
                groupValue: question2,
                onChanged: (String? value) {
                  setState(() {
                    question2 = value;
                  });
                }),
            RadioListTile(
                title: const Text("Yellow",
                 style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                value: "Yellow",
                groupValue: question2,
                onChanged: (String? value) {
                  setState(() {
                    question2 = value;
                  });
                }),
                  RadioListTile(
                title: const Text("Pink",
                 style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
                value: "Pink",
                groupValue: question2,
                onChanged: (String? value) {
                  setState(() {
                    question2 = value;
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
                  if (question2 == "Orange") {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(milliseconds: 3000),
                      action: SnackBarAction(
                        label: "Go Back",
                        onPressed: () {},
                      ),
                      elevation: 10,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.green,
                      content: const Text("Your answer is correct"),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(milliseconds: 3000),
                      action: SnackBarAction(
                        label: "Go Back",
                        onPressed: () {},
                      ),
                      elevation: 10,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.redAccent,
                      content: const Text("Your answer is wrong"),
                    ));
                  }
                  
                },
                
                child: const Text("Submit")),

          ],
        ),
      )),
    );
  }
}