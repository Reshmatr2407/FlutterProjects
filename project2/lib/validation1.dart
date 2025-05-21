import 'package:flutter/material.dart';
import 'package:project2/page1.dart';

class Validation1 extends StatefulWidget {
  const Validation1({super.key});

  @override
  State<Validation1> createState() => _Validation1State();
}

class _Validation1State extends State<Validation1> {
  final formkey=GlobalKey<FormState>();
  final _name=TextEditingController();
  final _phone=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(child: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const Text("Here to get",
                style: TextStyle(color: Colors.pink,
                fontSize: 30,
                fontWeight: FontWeight.bold
                ),),
                  
                const SizedBox(
                    height: 10,
                  ),
        
                const Text("Welcome",
                style: TextStyle(color: Colors.purple,
                fontSize: 20),),
                 
                const SizedBox(
                    height: 30,
                  ),
        
                SizedBox(
                  width: 400,
                  child: TextFormField(
                    // validator: (value) {
                    //   return (value!.isEmpty)?"Name is required ":null;
                      
                    // },
                  //  controller: _name,
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
                    keyboardType: TextInputType.number,
                  //  controller: _phone,
                      maxLength: 10,
                   decoration: const InputDecoration(
                      labelText: "Enter your Phoneno",
                      border: OutlineInputBorder()
                    ),
                    //  validator: (value) {
                    //   if (value!.isEmpty){
                    //     return "Phone number is required";
                    //   }
                    //   else if(_phone.text.length !=10){
                    //       return "Phone number should be 10 digits";
                    //   }
                    //   else{
                    //     return null;
                    //   }
                    // },    
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    elevation: 20
                  ),
                  onPressed: (){
                    if(formkey.currentState!.validate()){
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
                  }, child: const Text("Submit"))
        
              ],
            ),
          ),
        ),
      )),
    );
  }
}