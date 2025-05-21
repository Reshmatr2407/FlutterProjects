import 'package:flutter/material.dart';
import 'package:statefullwidget/armstrong.dart';
import 'package:statefullwidget/buttonpage.dart';
import 'package:statefullwidget/calculator.dart';
import 'package:statefullwidget/displayname.dart';
import 'package:statefullwidget/multiplication.dart';
import 'package:statefullwidget/radio.dart';
import 'package:statefullwidget/radiomarried.dart';
import 'package:statefullwidget/sum.dart';
import 'package:statefullwidget/textfieldpage3.dart';
import 'package:statefullwidget/textfieldpage4.dart';
import 'package:statefullwidget/textfileldpage2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'), // Optional: Add a title to the AppBar
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the buttons vertically
          children: [



            ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Buttonpage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('Button Page '),
            ),




            const SizedBox(height: 20), // Add space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Textfieldpage3()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('DisplayField'),
            ),
             const SizedBox(height: 20), // Add space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Textfieldpage4()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('Textfield'),
            ),
            const SizedBox(height: 20), // Add space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Textfileldpage2()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('Textfield2'),
            ),
             const SizedBox(height: 20), // Add space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sum()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('Sum'),
            ),
             ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calculator()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('Calculator'),
            ),
             ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Armstrong()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('Amstrong'),
            ),
             ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Multiplication()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('Multiplication'),
            ),
           const SizedBox(height: 20), // Add space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Radiolist()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('Radio gender'),
            ),
            const SizedBox(height: 20), // Add space between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the buttonpage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Radiobutton()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Uniform padding
                textStyle: const TextStyle(fontSize: 18), // Uniform text style
              ),
              child: Text('Radio Married'),
            ),

          ],
        ),
      ),
    );
  }
}
