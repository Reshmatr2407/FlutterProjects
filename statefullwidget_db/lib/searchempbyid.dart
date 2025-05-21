import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:statefullwidget/employee.dart';

class EmployeeSearchPage extends StatefulWidget {
  @override
  _EmployeeSearchPageState createState() => _EmployeeSearchPageState();
}

class _EmployeeSearchPageState extends State<EmployeeSearchPage> {
  Employee? _employee;
  final TextEditingController _controller = TextEditingController();

  Future<void> _searchEmployee() async {
    final id = _controller.text;
    final response = await http.get(Uri.parse('http://localhost:5288/api/EmployeeModule/Searchbyid/$id'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      if (data.isNotEmpty) {
        setState(() {
          _employee = Employee.fromJson(data[0]);
        });
      } else {
        setState(() {
          _employee = null; // No employee found
        });
      }
    } else {
      throw Exception('Failed to load employee');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter Employee ID',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _searchEmployee,
              child: Text('Search'),
            ),
            SizedBox(height: 20),
            if (_employee != null) ...[
              Text('ID: ${_employee!.id}'),
              Text('Name: ${_employee!.name}'),
            
            ] else if (_employee == null && _controller.text.isNotEmpty) ...[
              Text('No employee found.'),
            ],
          ],
        ),
      ),
    );
  }
}