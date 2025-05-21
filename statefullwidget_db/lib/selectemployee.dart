import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:statefullwidget/employee.dart';

class EmployeeDropdownPage extends StatefulWidget {
  @override
  _EmployeeDropdownPageState createState() => _EmployeeDropdownPageState();
}

class _EmployeeDropdownPageState extends State<EmployeeDropdownPage> {
  List<Employee> _employees = [];
  Employee? _selectedEmployee;

  @override
  void initState() {
    super.initState();
    _fetchEmployees();
  }

  Future<void> _fetchEmployees() async {
    final response = await http.get(Uri.parse('http://localhost:5288/api/EmployeeModule/GetEmpnames'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        _employees = data.map((json) => Employee.fromJson(json)).toList();
      });
    } else {
      throw Exception('Failed to load employees');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Dropdown'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<Employee>(
              hint: Text('Select Employee'),
              value: _selectedEmployee,
              onChanged: (Employee? newValue) {
                setState(() {
                  _selectedEmployee = newValue;
                });
              },
              items: _employees.map<DropdownMenuItem<Employee>>((Employee employee) {
                return DropdownMenuItem<Employee>(
                  value: employee,
                  child: Text(employee.name),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            if (_selectedEmployee != null)
              Text('Selected Employee: ${_selectedEmployee!.name} (ID: ${_selectedEmployee!.id})'),
          ],
        ),
      ),
    );
  }
}