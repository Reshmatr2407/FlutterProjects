import 'package:flutter/material.dart';

class Textfieldpage4 extends StatefulWidget {
  const Textfieldpage4({super.key});

  @override
  State<Textfieldpage4> createState() => _Textfieldpage4State();
}

class _Textfieldpage4State extends State<Textfieldpage4> {
  final _txtvalue1 = TextEditingController();
  final _txtvalue2 = TextEditingController();
  final _txtvalue3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Text field",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
            SizedBox(
              width: 500,
              child: TextField(
                controller: _txtvalue1,
                decoration: InputDecoration(
                    labelText: "Enter Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                controller: _txtvalue2,
                decoration: InputDecoration(
                    labelText: "Enter Place",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 500,
              child: TextField(
                controller: _txtvalue3,
                decoration: InputDecoration(
                    labelText: "Enter Qualification",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
                onPressed: () {
                  setState(() {
                    _txtvalue1.text;
                    _txtvalue2.text;
                    _txtvalue3.text;
                  });
                },
                child: const Text("Submit")),
            const SizedBox(
              height: 30,
            ),
            Text(_txtvalue1.text.toString()),
            Text(_txtvalue2.text.toString()),
            Text(_txtvalue3.text.toString())
          ],
        ),
      )),
    );
  }
}
