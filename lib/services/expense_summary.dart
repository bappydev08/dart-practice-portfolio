import '../models/expense.dart';

class ExpenseSummary {
  const ExpenseSummary._();

  static double totalAmount(Iterable<Expense> expenses) {
    return expenses.fold<double>(
      0.0,
      (total, expense) => total + expense.amount,
    );
  }

  static Map<ExpenseCategory, double> totalsByCategory(
    Iterable<Expense> expenses,
  ) {
    final totals = <ExpenseCategory, double>{};

    for (final expense in expenses) {
      totals.update(
        expense.category,
        (currentTotal) => currentTotal + expense.amount,
        ifAbsent: () => expense.amount,
      );
    }

    return totals;
  }

  static Expense? highestExpense(Iterable<Expense> expenses) {
    Expense? highest;

    for (final expense in expenses) {
      if (highest == null || expense.amount > highest.amount) {
        highest = expense;
      }
    }

    return highest;
  }
}
