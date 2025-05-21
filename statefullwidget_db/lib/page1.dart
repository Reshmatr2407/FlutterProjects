import 'package:flutter/material.dart';
import 'package:statefullwidget/displayname.dart';
import 'package:statefullwidget/employee_dropdown.dart';
import 'package:statefullwidget/select_emp.dart';


class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Column(children: [
        const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 20
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const EmployeeTable())
                );
              }, child: const Text("EmployeeTable")),
              const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                elevation: 20
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const EmployeeDropdown(
                   
                  ))
                );
              }, child: const Text("EmployeeDropdown")),
          const SizedBox(
              height: 30,
            ),
          //   ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.green,
          //       foregroundColor: Colors.white,
          //       elevation: 20
          //     ),
          //     onPressed: (){
          //       Navigator.of(context).push(
          //         MaterialPageRoute(builder: (context)=> const Validation2(
                   
          //         ))
          //       );
          //     }, child: const Text("Validation2")),
          //      const SizedBox(
          //     height: 30,
          //   ),
          //   ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.green,
          //       foregroundColor: Colors.white,
          //       elevation: 20
          //     ),
          //     onPressed: (){
          //       Navigator.of(context).push(
          //         MaterialPageRoute(builder: (context)=> const Validation3(
                   
          //         ))
          //       );
          //     }, child: const Text("Validation3")),
          //      const SizedBox(
          //     height: 30,
          //   ),
          //   ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.green,
          //       foregroundColor: Colors.white,
          //       elevation: 20
          //     ),
          //     onPressed: (){
          //       Navigator.of(context).push(
          //         MaterialPageRoute(builder: (context)=>  Whatsapp(
                   
          //         ))
          //       );
          //     }, child: const Text("whatsapp")),
          //      const SizedBox(
          //     height: 30,
          //   ),
          //   ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.green,
          //       foregroundColor: Colors.white,
          //       elevation: 20
          //     ),
          //     onPressed: (){
          //       Navigator.of(context).push(
          //         MaterialPageRoute(builder: (context)=>  Listofitem(
                   
          //         ))
          //       );
          //     }, child: const Text("Listofitem")),
          //      const SizedBox(
          //     height: 30,
          //   ),
          //   ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.green,
          //       foregroundColor: Colors.white,
          //       elevation: 20
          //     ),
          //     onPressed: (){
          //       Navigator.of(context).push(
          //         MaterialPageRoute(builder: (context)=>  RadiobtnValidation(
                   
          //         ))
          //       );
          //     }, child: const Text("RadiobtnValidation")),
              
      ],)),
      

    );
  }

}