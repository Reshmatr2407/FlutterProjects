
//EMPLOYEE MODEL
//for getting whole data
class Employee {
  final int id;
  final String name;
  final String designation;
  final String department;

  Employee({required this.id, required this.name, required this.designation, required this.department});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      name: json['name'],
      designation: json['designation'],
      department: json['department'],
    );
  }
}


// for getting whole data
// class Employee {
//   final int id;
//   final String name;


//   Employee({required this.id, required this.name});

//   factory Employee.fromJson(Map<String, dynamic> json) {
//     return Employee(
//       id: json['id'],
//       name: json['name'],
     
//     );
//   }
// }
