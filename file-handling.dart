// file_handling.dart

import 'dart:io';

void main() {
  // Reading from a file
  File inputFile = File('input.txt');
  try {
    String contents = inputFile.readAsStringSync();
    print('File contents:');
    print(contents);
  } catch (e) {
    print('Error reading file: $e');
  }

  // Writing to a file
  File outputFile = File('output.txt');
  try {
    outputFile.writeAsStringSync('Hello, Dart File Handling!');
    print('Successfully wrote to the file.');
  } catch (e) {
    print('Error writing to file: $e');
  }

  // Appending to a file
  try {
    outputFile.writeAsStringSync('\nThis is a new line.',
        mode: FileMode.append);
    print('Successfully appended to the file.');
  } catch (e) {
    print('Error appending to file: $e');
  }
}
