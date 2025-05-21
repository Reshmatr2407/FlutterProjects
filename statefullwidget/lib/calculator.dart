import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final sum= TextEditingController();
  final sub=TextEditingController();
  final div = TextEditingController();
  final mul =TextEditingController();
  final num1 = TextEditingController();
  final num2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Calculator",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: num1,
                    decoration: InputDecoration(
                        labelText: "Enter First Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: num2,
                    decoration: InputDecoration(
                        labelText: "Enter Second Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  
                ),
                onPressed: () {
                  setState(() {
                    sum.text="";
                    div.text="";
                    mul.text="";
                    sub.text="";
                    num1.text="";
                    num2.text="";

                  });
                },
                child: const Text("Clear")),
          
            const SizedBox(
              height: 50,
            ),
            const Divider(thickness: 2,color: Colors.black,),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                    onPressed: () {
                      int add = int.parse(num1.text)+int.parse(num2.text);
                      setState(() {
                        sum.text=add.toString();
                      });
                    },
                    child: const Text("ADD")),
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: sum,
                    decoration: InputDecoration(
                        labelText: "Sum of Numbers",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                    onPressed: () {
                       int sub2 = int.parse(num1.text)-int.parse(num2.text);
                      setState(() {
                        sub.text=sub2.toString();
                      });
                    },
                    child: const Text("SUB")),
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: sub,
                    decoration: InputDecoration(
                        labelText: "Sub of Numbers",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                    onPressed: () {
                       int mul2 = int.parse(num1.text)*int.parse(num2.text);
                      setState(() {
                        mul.text=mul2.toString();
                      });
                    },
                    child: const Text("MUL")),
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: mul,
                    decoration: InputDecoration(
                        labelText: "Multi of Numbers",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                    onPressed: () {
                       double div2 = int.parse(num1.text)/int.parse(num2.text);
                      setState(() {
                        div.text=div2.toString();
                      });
                    },
                    child: const Text("DIV")),
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: div,
                    decoration: InputDecoration(
                        labelText: "Div of Numbers",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}