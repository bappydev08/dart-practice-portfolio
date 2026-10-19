enum ExpenseCategory {
  food,
  transport,
  education,
  bills,
  other,
}

class Expense {
  const Expense({
    required this.title,
    required this.amount,
    required this.category,
    required this.date,
  });

  final String title;
  final double amount;
  final ExpenseCategory category;
  final DateTime date;
}
