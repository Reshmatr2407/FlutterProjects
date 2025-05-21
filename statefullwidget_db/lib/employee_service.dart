// lib/employee_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'employee.dart';

class EmployeeService {
  final String apiUrl = 'http://localhost:5288/api/EmployeeModule/Getallempdetails';

  Future<List<Employee>> fetchEmployees() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Employee.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load employees');
    }
  }
}
