import 'package:dart_practice_portfolio/models/expense.dart';
import 'package:dart_practice_portfolio/services/expense_summary.dart';

void main() {
  final expenses = <Expense>[
    Expense(
      title: 'Lunch',
      amount: 180,
      category: ExpenseCategory.food,
      date: DateTime(2026, 10, 1),
    ),
    Expense(
      title: 'Bus fare',
      amount: 60,
      category: ExpenseCategory.transport,
      date: DateTime(2026, 10, 2),
    ),
    Expense(
      title: 'Course materials',
      amount: 350,
      category: ExpenseCategory.education,
      date: DateTime(2026, 10, 3),
    ),
    Expense(
      title: 'Dinner',
      amount: 220,
      category: ExpenseCategory.food,
      date: DateTime(2026, 10, 4),
    ),
  ];

  final total = ExpenseSummary.totalAmount(expenses);
  final categoryTotals = ExpenseSummary.totalsByCategory(expenses);
  final highest = ExpenseSummary.highestExpense(expenses);

  print('Expense Summary');
  print('===============');
  print('Number of expenses: ${expenses.length}');
  print('Total spent: ৳${total.toStringAsFixed(2)}');
  print('\nTotals by category:');

  for (final entry in categoryTotals.entries) {
    print('  ${entry.key.name}: ৳${entry.value.toStringAsFixed(2)}');
  }

  if (highest != null) {
    print('\nHighest expense: ${highest.title}');
    print('Amount: ৳${highest.amount.toStringAsFixed(2)}');
  }
}
