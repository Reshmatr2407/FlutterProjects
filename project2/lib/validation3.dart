import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:project2/page1.dart';
import 'package:project2/page2.dart';

class Validation3 extends StatefulWidget {
  const Validation3({super.key});

  @override
  State<Validation3> createState() => _Validation3State();
}

class _Validation3State extends State<Validation3> {

  final formkey1=GlobalKey<FormState>();

  final _name=TextEditingController();
  final _phone=TextEditingController();
  final _place=TextEditingController();
  final  _qualifictaion=TextEditingController();
  final formkey2=GlobalKey<FormState>();
   final email = TextEditingController();
  final pswd = TextEditingController();
  final cpswd = TextEditingController();

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
    if (formkey2.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
        backgroundColor: Colors.green,
        content: const Text("Successfully logined"),
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
        title: const Text("Login Page",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(30),

                child: Form(
                  key: formkey1,
                  child: Column(
                    children: [
                      // const Text("Here to get",
                      // style: TextStyle(color: Colors.pink,
                      // fontSize: 30,
                      // fontWeight: FontWeight.bold
                      // ),),
                        
                      // SizedBox(
                      //     height: 10,
                      //   ),
              
                      const Text("Personal Information",
                      style: TextStyle(color: Colors.purple,
                      fontSize: 20),),
                       
                      const SizedBox(
                          height: 30,
                        ),
              
                      SizedBox(
                        width: 400,
                        child: TextFormField(
                          validator: (value) {
                            return (value!.isEmpty)?"Name is required ":null;
                            
                          },
                          controller: _name,
                          maxLength: 25,
                          decoration: const InputDecoration(
                            labelText: "Enter your Name",
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                       SizedBox(
                        width: 400,
                        child: TextFormField(
                          validator: (value) {
                            return (value!.isEmpty)?"Place is required ":null;
                            
                          },
                          controller: _place,
                          maxLength: 25,
                          decoration: const InputDecoration(
                            labelText: "Enter your Place",
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                       SizedBox(
                        width: 400,
                        child: TextFormField(
                          validator: (value) {
                            return (value!.isEmpty)?"Qualification is required ":null;
                            
                          },
                          controller: _qualifictaion,
                          maxLength: 25,
                          decoration: const InputDecoration(
                            labelText: "Enter your Qualifiction",
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                        SizedBox(
                        width: 400,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _phone,
                            maxLength: 10,
                         decoration: const InputDecoration(
                            labelText: "Enter your Phoneno",
                            border: OutlineInputBorder()
                          ),

                           validator: (value) {
                            if (value!.isEmpty){
                              return "Phone number is required";
                            }
                            else if(_phone.text.length !=10){
                                return "Phone number should be 10 digits";
                            }
                            else{
                              return null;
                            }

                          },    
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          elevation: 20
                        ),
                        onPressed: (){
                          if(formkey1.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor:Colors.green,
                                content:const Text("Login Successfully"),
                                action: SnackBarAction(label: "Continue", onPressed: (){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => const Page1())
                                  );
                                })
                              ));
                          }
                        }, child: const Text("Submit")),
              
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(thickness: 2,color: Colors.black,)
              
                    ],
                  ),
                ),
              ),
              Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(20),
              child: Form(
                  key: formkey2,
                  child: Column(
                    children: [
                      const Text(
                        "Confidential Information",
                        style: TextStyle(fontSize: 20, color: Colors.purple),
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
            ],
          ),
        ),
          
      )),
    );
  }
}