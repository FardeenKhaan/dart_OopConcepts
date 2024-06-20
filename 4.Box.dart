import 'dart:math';

class Box<T> {
  List<T> _items = [];

  // Method to add an item to the box
  void add(T item) {
    _items.add(item);
  }

  // Method to check if the box is empty
  bool isEmpty() {
    return _items.isEmpty;
  }

  // Method to draw a random item from the box
  T? drawItem() {
    if (isEmpty()) {
      return null;
    } else {
      Random random = Random();
      int index = random.nextInt(_items.length);
      return _items[index];
    }
  }
}

void main() {
  // Creating a box for strings
  Box<String> stringBox = Box<String>();
  stringBox.add('Mohsin');
  stringBox.add('Moiz');
  stringBox.add('Hamza');

  // Drawing items from the string box
  print('Drawing from string box: ${stringBox.drawItem()}');
  print('Drawing from string box: ${stringBox.drawItem()}');
  print('Drawing from string box: ${stringBox.drawItem()}');
  print(
      'Drawing from string box: ${stringBox.drawItem()}'); // Possibly null if box is empty

  // Creating a box for integers
  Box<int> intBox = Box<int>();
  intBox.add(10);
  intBox.add(20);
  intBox.add(30);

  // Drawing items from the integer box
  print('Drawing from integer box: ${intBox.drawItem()}');
  print('Drawing from integer box: ${intBox.drawItem()}');
  print('Drawing from integer box: ${intBox.drawItem()}');
  print(
      'Drawing from integer box: ${intBox.drawItem()}'); // Possibly null if box is empty
}
