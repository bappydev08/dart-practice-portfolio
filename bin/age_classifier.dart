import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  final name = (stdin.readLineSync() ?? '').trim();

  if (name.isEmpty) {
    print('Name cannot be empty.');
    return;
  }

  final age = readValidAge();
  final category = age >= 18 ? 'Adult' : 'Minor';

  print('\nName: $name');
  print('Age: $age');
  print('Category: $category');
}

int readValidAge() {
  while (true) {
    stdout.write('Enter your age: ');
    final input = stdin.readLineSync();
    final age = int.tryParse((input ?? '').trim());

    if (age != null && age >= 0) {
      return age;
    }

    print('Invalid age. Enter a whole number greater than or equal to 0.');
  }
}
