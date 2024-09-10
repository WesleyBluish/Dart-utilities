void main() {
  dateTimeDemo();
}

void dateTimeDemo() {
  DateTime now = DateTime.now();
  print('Current Date and Time: $now');

  // Formatting date
  String formattedDate = '${now.day}-${now.month}-${now.year}';
  print('Formatted Date: $formattedDate');

  // Adding/subtracting days
  DateTime futureDate = now.add(Duration(days: 5));
  DateTime pastDate = now.subtract(Duration(days: 5));
  print('Future Date: $futureDate');
  print('Past Date: $pastDate');

  // Difference between two dates
  DateTime anotherDate = DateTime(2023, 12, 25);
  Duration difference = now.difference(anotherDate);
  print('Difference between now and 25th Dec 2023: ${difference.inDays} days');
}
