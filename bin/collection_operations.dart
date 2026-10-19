void main() {
  final cities = <String>['Dhaka', 'Chattogram', 'Khulna', 'Rajshahi'];
  final numbers = <int>[10, 20, 30, 40, 50];

  final citiesStartingWithC =
      cities.where((city) => city.startsWith('C')).toList();
  final doubledNumbers = numbers.map((number) => number * 2).toList();
  final total = numbers.fold<int>(0, (sum, number) => sum + number);

  final user = <String, dynamic>{
    'name': 'Bappy',
    'age': 21,
    'isAdmin': false,
  };

  print('All cities: $cities');
  print('Cities starting with C: $citiesStartingWithC');
  print('Doubled numbers: $doubledNumbers');
  print('Sum of numbers: $total');
  print('User name: ${user['name']}');
  print('Admin account: ${user['isAdmin']}');
}
