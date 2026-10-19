import 'package:dart_practice_portfolio/models/student.dart';

void main() {
  const student = Student(
    firstName: 'Refat',
    lastName: 'Rohim',
    age: 20,
    email: 'refat@example.com',
  );

  print('Student profile');
  print('---------------');
  print('Full name: ${student.fullName}');
  print('Age: ${student.age}');
  print('Email: ${student.email}');
  print('Adult: ${student.isAdult}');
  print(student);
}
