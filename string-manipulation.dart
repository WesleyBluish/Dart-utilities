void main() {
  stringManipulation();
}

void stringManipulation() {
  String firstName = 'James';
  String lastName = 'Buluma';

  // Concatenation
  String fullName = firstName + ' ' + lastName;
  print('Full Name: $fullName');

  // String Interpolation
  String greeting = 'Hello, my name is $firstName $lastName';
  print(greeting);

  // Substring extraction
  String part = fullName.substring(0, 5); // Extract first 5 characters
  print('Substring: $part');

  // Case conversion
  print('Uppercase: ${fullName.toUpperCase()}');
  print('Lowercase: ${fullName.toLowerCase()}');

  // Reverse the string
  String reversed = fullName.split('').reversed.join('');
  print('Reversed Name: $reversed');

  // Length of the string
  print('Length: ${fullName.length} characters');
}
