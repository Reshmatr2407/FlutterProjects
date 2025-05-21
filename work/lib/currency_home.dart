import 'package:flutter/material.dart';
import 'package:work1/currency_result.dart';

class CurrencyHome extends StatefulWidget {
  CurrencyHome({super.key});
  List<String> currency = ['Dinar', 'EUR', 'USD', 'CAD', 'RUB'];
  String? selectedItem;
  List<Map<String, dynamic>> currencydata = [
    {'Name': 'Dinar', 'value': '0.004', 'image': 'assets/dinar.jpg'},
    {'Name': 'EUR', 'value': '0.0107', 'image': 'assets/eur.jpg'},
    {'Name': 'USD', 'value': '0.011', 'image': 'assets/usd.jpg'},
    {'Name': 'CAD', 'value': '0.022', 'image': 'assets/cad.jpg'},
    {'Name': 'RUB', 'value': '1.11', 'image': 'assets/rub.jpg'},
  ];

  @override
  State<CurrencyHome> createState() => _CurrencyHomeState();
}

class _CurrencyHomeState extends State<CurrencyHome> {
  final inr = TextEditingController();
  final formkey = GlobalKey<FormState>();

  String? inrvalidation() {
    if (inr.text.isEmpty) {
      return "Please enter the value";
    } else {
      return null;
    }
  }

  String? dropvalidation() {
    if (widget.selectedItem == null) {
      return "Please select any currency";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          "Currency Convertion",
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
                  validator: (value) => inrvalidation(),
                  controller: inr,
                  decoration: InputDecoration(
                      labelText: "Enter INR",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: "Select any option",
                  ),
                  validator: (value) => dropvalidation(),
                  // value: widget.selectedItem,
                  items: widget.currency.map((item) {
                    return DropdownMenuItem(value: item, child: Text(item));
                  }).toList(),
                  onChanged: (String? newvalue) {
                    setState(() {
                      widget.selectedItem = newvalue!;
                    });
                  }),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      for (int i = 0; i < widget.currencydata.length; i++) {
                        if (widget.selectedItem ==
                            widget.currencydata[i]['Name']) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CurrencyResult(
                                  name: widget.currencydata[i]['Name'],
                                  value: widget.currencydata[i]['value'],
                                  image: widget.currencydata[i]['image'],
                                  rs: double.parse(inr.text))));
                        }
                      }
                    }
                  },
                  child: const Text("CONVERT"))
            ],
          ),
        ),
      )),
    );
  }
}
