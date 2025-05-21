import 'package:flutter/material.dart';

class RadiobtnValidation extends StatefulWidget {
  const RadiobtnValidation({super.key});

  @override
  State<RadiobtnValidation> createState() => _RadiobtnValidationState();
}

class _RadiobtnValidationState extends State<RadiobtnValidation> {
  String? question;
  bool _submit = false;
  final formkey = GlobalKey<FormState>();
  submit() {
    setState(() {
      _submit = true;
    });
    if (formkey.currentState!.validate() && question != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: const Text("thanks for selection"),
          action: SnackBarAction(label: "continue", onPressed: () {})));
    }
  }

  // String? question2;
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
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Q.What is the color of apple?",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                  title: const Text(
                    "Orange",
                    style: TextStyle(
                        color: Colors.brown, fontWeight: FontWeight.bold),
                  ),
                  value: "Orange",
                  groupValue: question,
                  onChanged: (String? value) {
                    setState(() {
                      question = value;
                    });
                  }),
              RadioListTile(
                  title: const Text(
                    "Red",
                    style: TextStyle(
                        color: Colors.brown, fontWeight: FontWeight.bold),
                  ),
                  value: "Red",
                  groupValue: question,
                  onChanged: (String? value) {
                    setState(() {
                      question = value;
                    });
                  }),
              RadioListTile(
                  title: const Text(
                    "Yellow",
                    style: TextStyle(
                        color: Colors.brown, fontWeight: FontWeight.bold),
                  ),
                  value: "Yellow",
                  groupValue: question,
                  onChanged: (String? value) {
                    setState(() {
                      question = value;
                    });
                  }),
              RadioListTile(
                  title: const Text(
                    "Pink",
                    style: TextStyle(
                        color: Colors.brown, fontWeight: FontWeight.bold),
                  ),
                  value: "Pink",
                  groupValue: question,
                  onChanged: (String? value) {
                    setState(() {
                      question = value;
                    });
                  }),

              if (_submit && question == null)
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text("Please select any option",
                  style: TextStyle(color: Colors.red ),),
                ),

              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
                    submit();
                    if (question == "Red") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: const Duration(milliseconds: 2000),
                        action: SnackBarAction(
                          label: "Go Back",
                          onPressed: () {},
                        ),
                        elevation: 10,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.green,
                        content: const Text("Your answer is correct"),
                      ));
                    } else if(question =="Yellow" || question=="Orange" || question == "Pink"){
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


              //     SizedBox(
              //       height: 40,
              //     ),

              //      const Text(
              //   "Q.What is the color of Orange?",
              //   style: TextStyle(color: Colors.pink, fontSize: 20,fontWeight: FontWeight.bold),
              // ),
              // RadioListTile(
              //     title: Text("Orange",
              //      style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
              //     value: "Orange",
              //     groupValue: question2,
              //     onChanged: (String? value) {
              //       setState(() {
              //         question2 = value;
              //       });
              //     }),
              // RadioListTile(
              //     title: Text("Red",
              //      style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
              //     value: "Red",
              //     groupValue: question2,
              //     onChanged: (String? value) {
              //       setState(() {
              //         question2 = value;
              //       });
              //     }),
              // RadioListTile(
              //     title: Text("Yellow",
              //      style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
              //     value: "Yellow",
              //     groupValue: question2,
              //     onChanged: (String? value) {
              //       setState(() {
              //         question2 = value;
              //       });
              //     }),
              //       RadioListTile(
              //     title: Text("Pink",
              //      style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
              //     value: "Pink",
              //     groupValue: question2,
              //     onChanged: (String? value) {
              //       setState(() {
              //         question2 = value;
              //       });
              //     }),
              //     SizedBox(
              //         height: 20,
              //       ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.green,
              //     foregroundColor: Colors.white,
              //      shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(5)
              //           )
              //   ),
              //     onPressed: () {
              //       if (question2 == "Orange") {
              //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //           duration: const Duration(milliseconds: 3000),
              //           action: SnackBarAction(
              //             label: "Go Back",
              //             onPressed: () {},
              //           ),
              //           elevation: 10,
              //           behavior: SnackBarBehavior.floating,
              //           backgroundColor: Colors.green,
              //           content: const Text("Your answer is correct"),
              //         ));
              //       } else {
              //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //           duration: const Duration(milliseconds: 3000),
              //           action: SnackBarAction(
              //             label: "Go Back",
              //             onPressed: () {},
              //           ),
              //           elevation: 10,
              //           behavior: SnackBarBehavior.floating,
              //           backgroundColor: Colors.redAccent,
              //           content: const Text("Your answer is wrong"),
              //         ));
              //       }

              //     },

              //     child: const Text("Submit")),
            ],
          ),
        ),
      )),
    );
  }
}
