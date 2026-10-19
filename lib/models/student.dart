class Student {
  const Student({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.email,
  });

  final String firstName;
  final String lastName;
  final int age;
  final String email;

  String get fullName => '$firstName $lastName';

  bool get isAdult => age >= 18;

  @override
  String toString() {
    return 'Student(fullName: $fullName, age: $age, email: $email, '
        'isAdult: $isAdult)';
  }
}
