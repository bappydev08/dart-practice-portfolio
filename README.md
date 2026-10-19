# Dart Practice Portfolio

A beginner-friendly collection of Dart fundamentals and small command-line examples, written with readable naming, null-safe input handling, and simple tests.

> **Purpose:** learning and practice. These examples are not intended to be production-ready applications.

## What you'll find

| File | Topics |
|---|---|
| `bin/01_grade_calculator.dart` | `if/else`, input validation, functions |
| `bin/02_age_classifier.dart` | user input, `int.tryParse`, conditions |
| `bin/03_student_demo.dart` | classes, named constructors, getters, `toString()` |
| `bin/04_collection_operations.dart` | `List`, `Map`, `where`, `map`, `fold` |
| `bin/05_expense_summary_demo.dart` | models, enums, service classes, totals by category |
| `bin/06_simple_calculator.dart` | reusable input helpers, `switch`, arithmetic validation |
| `lib/models/` | reusable `Student` and `Expense` models |
| `lib/services/expense_summary.dart` | expense summary calculations kept separate from the UI/CLI |
| `test/expense_summary_test.dart` | unit tests for totals and highest expense |

## Requirements

- Dart SDK 3.3.0 or later
- A terminal (PowerShell, Windows Terminal, macOS Terminal, or Linux shell)

## Run the examples

Clone or download this repository, open its folder in a terminal, and install the development dependencies once:

```bash
dart pub get
```

Run an example from the project root:

```bash
dart run bin/01_grade_calculator.dart
dart run bin/02_age_classifier.dart
dart run bin/03_student_demo.dart
dart run bin/04_collection_operations.dart
dart run bin/05_expense_summary_demo.dart
dart run bin/06_simple_calculator.dart
```

Each file in `bin/` is a separate program. Run one command at a time.

## Check code quality

Format the code, run the analyzer, and execute the tests:

```bash
dart format .
dart analyze
dart test
```

## Example output

The expense summary demo prints a sample total and a breakdown by category. The sample data is hard-coded for learning; it does not read, save, or sync real financial data.

## Learning goals

- Write null-safe Dart code and validate console input.
- Use meaningful variable, class, and method names.
- Separate data models from calculations.
- Practice collections, control flow, classes, and enums.
- Add unit tests for logic that can be checked automatically.

## Suggested next steps

1. Add your own examples with clear file names.
2. Add input/output examples to the README when useful.
3. Keep each practice program focused on one main concept.
4. Run `dart format .`, `dart analyze`, and `dart test` before pushing changes.

## Author

**Bappy** — Dart and Flutter learner building practical projects one step at a time.
