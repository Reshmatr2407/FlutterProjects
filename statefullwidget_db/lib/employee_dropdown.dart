import 'package:flutter/material.dart';
import 'package:statefullwidget/api_communicate.dart';
import 'package:statefullwidget/employee.dart';

class EmployeeDropdown extends StatefulWidget {
  const EmployeeDropdown({super.key});

  @override
  _EmployeeDropdownState createState() => _EmployeeDropdownState();
}

class _EmployeeDropdownState extends State<EmployeeDropdown> {
  late Future<List<Employee>> futureEmployees;
  Employee? selectedEmployee;

  @override
  void initState() {
    super.initState();
    futureEmployees = fetchEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Dropdown'),
      ),
      body: FutureBuilder<List<Employee>>(
        future: futureEmployees,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No employees found.'));
          } else {
            List<Employee> employees = snapshot.data!;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<Employee>(
                  hint: const Text('Select an Employee'),
                  value: selectedEmployee,
                  onChanged: (Employee? newValue) {
                    setState(() {
                      selectedEmployee = newValue;
                    });
                  },
                  items: employees.map<DropdownMenuItem<Employee>>((Employee employee) {
                    return DropdownMenuItem<Employee>(
                      value: employee,
                      child: Text(employee.name),
                    );
                  }).toList(),
                ),
                if (selectedEmployee != null)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Selected Employee ID: ${selectedEmployee!.id}'),
                  ),
              ],
            );
          }
        },
      ),
    );
  }
}
