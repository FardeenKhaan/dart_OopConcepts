class Student {
  String _name;
  List<int> _resultArray;

  // Default constructor
  Student()
      : _name = '',
        _resultArray = List.filled(5, 0);

  // One-argument constructor (for Name)
  Student.withName(this._name) : _resultArray = List.filled(5, 0);

  // Two-argument constructor
  Student.withNameAndResults(this._name, List<int> resultArray)
      : _resultArray = List.from(resultArray);

  // Getters
  String get name => _name;
  List<int> get resultArray => List.from(_resultArray);

  // Setters
  set name(String name) => _name = name;
  set resultArray(List<int> resultArray) =>
      _resultArray = List.from(resultArray);

  // Method to calculate average
  double average() {
    int total = _resultArray.reduce((a, b) => a + b);
    return total / _resultArray.length;
  }

  // Method to compare average with another student
  bool compareAverage(Student other) {
    return this.average() > other.average();
  }

  @override
  String toString() {
    return 'Name: $_name, Results: $_resultArray';
  }
}

void main() {
  Student student1 =
      Student.withNameAndResults('Fardeen23', [85, 90, 78, 92, 88]);
  Student student2 =
      Student.withNameAndResults('fardeen21', [80, 85, 75, 90, 95]);

  print('Student 1: $student1');
  print('Student 2: $student2');

  print('Average of ${student1.name}: ${student1.average()}');
  print('Average of ${student2.name}: ${student2.average()}');

  if (student1.compareAverage(student2)) {
    print('${student1.name} has a higher average than ${student2.name}.');
  } else {
    print('${student2.name} has a higher average than ${student1.name}.');
  }
}
