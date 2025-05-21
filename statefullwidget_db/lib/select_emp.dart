// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:statefullwidget/api_communicate.dart';
import 'package:statefullwidget/employee.dart';

// display full table emp in a gridview
class EmployeeTable extends StatefulWidget {
  const EmployeeTable({super.key});

  @override
  _EmployeeTableState createState() => _EmployeeTableState();
}

class _EmployeeTableState extends State<EmployeeTable> {
  late Future<List<Employee>> futureEmployees;

  @override
  void initState() {
    super.initState();
    futureEmployees = fetchEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
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
            return DataTable(
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
     
              ],
              rows: snapshot.data!.map((employee) {
                return DataRow(cells: [
                  DataCell(Text(employee.id.toString())),
                  DataCell(Text(employee.name)),
               
                ]);
              }).toList(),
            );
          }
        },
      ),
    );
  }
}