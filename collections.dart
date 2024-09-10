void main() {
  collectionsDemo();
}

void collectionsDemo() {
  // List: Ordered, allows duplicates
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  fruits.add('Orange');
  fruits.remove('Banana');
  print('List of Fruits: $fruits');
  for (var fruit in fruits) {
    print(fruit);
  }

  // Set: Unordered, no duplicates
  Set<int> uniqueNumbers = {1, 2, 3};
  uniqueNumbers.add(4);
  uniqueNumbers.remove(1);
  print('Set of Unique Numbers: $uniqueNumbers');

  // Map: Key-value pairs
  Map<String, int> productPrices = {'Apple': 100, 'Banana': 50};
  productPrices['Mango'] = 70; // Add
  productPrices.remove('Banana'); // Remove
  print('Product Prices: $productPrices');

  // Iterating over Map
  productPrices.forEach((key, value) {
    print('$key costs $value');
  });
}
