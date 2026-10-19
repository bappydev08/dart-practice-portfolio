import 'package:dart_practice_portfolio/models/expense.dart';
import 'package:dart_practice_portfolio/services/expense_summary.dart';
import 'package:test/test.dart';

void main() {
  group('ExpenseSummary', () {
    final expenses = <Expense>[
      Expense(
        title: 'Lunch',
        amount: 100,
        category: ExpenseCategory.food,
        date: DateTime(2026, 10, 1),
      ),
      Expense(
        title: 'Bus fare',
        amount: 50,
        category: ExpenseCategory.transport,
        date: DateTime(2026, 10, 2),
      ),
      Expense(
        title: 'Dinner',
        amount: 150,
        category: ExpenseCategory.food,
        date: DateTime(2026, 10, 3),
      ),
    ];

    test('calculates the total amount', () {
      expect(ExpenseSummary.totalAmount(expenses), 300);
    });

    test('calculates totals by category', () {
      final totals = ExpenseSummary.totalsByCategory(expenses);

      expect(totals[ExpenseCategory.food], 250);
      expect(totals[ExpenseCategory.transport], 50);
    });

    test('returns the highest expense', () {
      expect(ExpenseSummary.highestExpense(expenses)?.title, 'Dinner');
    });

    test('handles an empty expense list', () {
      expect(ExpenseSummary.totalAmount(<Expense>[]), 0);
      expect(ExpenseSummary.totalsByCategory(<Expense>[]), isEmpty);
      expect(ExpenseSummary.highestExpense(<Expense>[]), isNull);
    });
  });
}
