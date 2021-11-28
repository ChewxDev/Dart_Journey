//! GETTERS & SETTERS


import '1_studets.dart';

void main() {
  var student = Student(1, 'Chewx', 89);
  print(
      'Student name is ${student.username}\nIs he smart ${student.isStudentSmart}');

  student.studentNewName = 'Nick';
  print(
      'Student name is ${student.username}\nIs him smart ${student.isStudentSmart}');
}
