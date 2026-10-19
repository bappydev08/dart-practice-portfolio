import 'dart:io';

void main() {
  final firstNumber = readNumber('Enter the first number: ');
  stdout.write('Choose an operation (+, -, *, /): ');
  final operation = (stdin.readLineSync() ?? '').trim();
  final secondNumber = readNumber('Enter the second number: ');

  final result = calculate(firstNumber, operation, secondNumber);

  if (result == null) {
    print('Could not calculate. Check the operation and try again.');
    return;
  }

  print('Result: ${result.toStringAsFixed(2)}');
}

double readNumber(String prompt) {
  while (true) {
    stdout.write(prompt);
    final input = stdin.readLineSync();
    final number = double.tryParse((input ?? '').trim());

    if (number != null && number.isFinite) {
      return number;
    }

    print('Invalid number. Try again.');
  }
}

double? calculate(double left, String operation, double right) {
  switch (operation) {
    case '+':
      return left + right;
    case '-':
      return left - right;
    case '*':
      return left * right;
    case '/':
      if (right == 0) {
        print('Cannot divide by zero.');
        return null;
      }
      return left / right;
    default:
      return null;
  }
}
