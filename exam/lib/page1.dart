import 'package:exam/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
   final email = TextEditingController();
  final pswd = TextEditingController();
  final cpswd = TextEditingController();
  final name = TextEditingController();
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
        content: const Text("Successfully logined "),
        action: SnackBarAction(
            label: "Continue page2",
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  Page2(name:name.text)));
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
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Registration Form",
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
                  controller: name,
                    validator: (value) {
                              return (value!.isEmpty)?"Name is required ":null;       
                            },
                  decoration: InputDecoration(
                    labelText: "Enter Your Name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                  ),
                ),
              ),
               const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: email,
                  validator: (value) => emailvalidation(),
                  decoration: InputDecoration(
                    labelText: "Enter Your Email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                  ),
                ),
              ),
               const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: pswd,
                  validator: (value) => passwordverification(),
                  decoration: InputDecoration(
                    labelText: "Enter Your Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                  ),
                ),
              ),
               const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: cpswd,
                  validator: (value) => confirmpasswordverification(),
                  decoration: InputDecoration(
                    labelText: "Confirm Your Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  elevation: 20
                ),
                onPressed: (){
                   submit();
                }, child: const Text("SUBMIT"))
              
            ],
          ),
        ),
      )),
    );
  }
}
