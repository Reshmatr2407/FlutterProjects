import 'package:flutter/material.dart';
import 'package:project2/page2.dart';

class Validation2 extends StatefulWidget {
  const Validation2({super.key});

  @override
  State<Validation2> createState() => _Validation2State();
}

class _Validation2State extends State<Validation2> {
  final email = TextEditingController();
  final pswd = TextEditingController();
  final cpswd = TextEditingController();
  final formkey = GlobalKey<FormState>();
  String? emailvalidation() {
    if (email.text.isEmpty) {
      return "Email Required";
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email.text)) {
      return "Invalid email format";
    } else {
      return null;
    }
  }

  String? passwordverification() {
    if (pswd.text.isEmpty) {
      return "Password Required";
    } else if (pswd.text.length != 8) {
      return "Password length must be 8 character";
    } else if (cpswd.text != pswd.text) {
      return "Password does not matches";
    } else if (!RegExp(r'^[0-9]').hasMatch(pswd.text)) {
      return "Invalid password format";
    } else {
      return null;
    }
  }

  String? confirmpasswordverification() {
    if (cpswd.text.isEmpty) {
      return "Confirm Password Required";
    } else if (cpswd.text != cpswd.text) {
      return "Password does not matches";
    } else {
      return null;
    }
  }

  String? submit() {
    if (formkey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
        backgroundColor: Colors.green,
        content: const Text("Successfully logined page2"),
        action: SnackBarAction(
            label: "Continue page2",
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Page2()));
            }),
      ),
      );
      
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(20),
            child: Form(
                key: formkey,
                child: Column(
                  children: [
                    const Text(
                      "User Configuration",
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                    SizedBox(
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            validator: (context) => emailvalidation(),
                            controller: email,
                            decoration: const InputDecoration(
                                labelText: "Enter email",
                                border: OutlineInputBorder())),
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (context) => passwordverification(),
                          controller: pswd,
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: "Enter password",
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                      SizedBox(
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (context) => confirmpasswordverification(),
                          controller: cpswd,
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: "Confirm password",
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        elevation: 20
                      ),
                      onPressed: (){
                      submit();
                    }, child: const Text("Submit")),

                  ],
                )),
          ),
        ),
      )),
    );
  }
}
