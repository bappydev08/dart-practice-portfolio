import 'dart:io';

void main() {
  final mark = readValidMark();
  final grade = gradeForMark(mark);

  print('\nMark: $mark');
  print('Grade: $grade');
}

int readValidMark() {
  while (true) {
    stdout.write('Enter your mark (0-100): ');
    final input = stdin.readLineSync();
    final mark = int.tryParse((input ?? '').trim());

    if (mark != null && mark >= 0 && mark <= 100) {
      return mark;
    }

    print('Invalid mark. Enter a whole number from 0 to 100.');
  }
}

String gradeForMark(int mark) {
  if (mark >= 80) {
    return 'A+';
  }
  if (mark >= 70) {
    return 'A';
  }
  if (mark >= 60) {
    return 'B';
  }
  if (mark >= 50) {
    return 'B-';
  }
  if (mark >= 40) {
    return 'C';
  }
  return 'Fail';
}
