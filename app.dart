// combined_application.dart

import 'dart:io';
import 'package:intl/intl.dart';

void main() {
  List<Map<String, String>> entries = [];
  File outputFile = File('entries.txt');

  while (true) {
    stdout.write('Enter a string (or "quit" to exit): ');
    String input = stdin.readLineSync() ?? '';

    if (input.toLowerCase() == 'quit') break;

    // String manipulation
    String manipulated = manipulateString(input);

    // Date and time
    String timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    // Store in collection
    entries.add({
      'original': input,
      'manipulated': manipulated,
      'timestamp': timestamp,
    });

    // Save to file
    saveToFile(outputFile, '${entries.last}\n');

    print('Entry saved!\n');
  }

  print('All entries:');
  entries.forEach(print);
}

String manipulateString(String input) {
  return input.toUpperCase().split('').reversed.join('');
}

void saveToFile(File file, String content) {
  try {
    file.writeAsStringSync(content, mode: FileMode.append);
  } catch (e) {
    print('Error writing to file: $e');
  }
}
