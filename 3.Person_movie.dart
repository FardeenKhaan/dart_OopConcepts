abstract class Person {
  String _name;

  Person(this._name);

  // Accessors
  String get name => _name;

  // Mutators
  set name(String name) => _name = name;

  // Abstract method
  bool isOutstanding();
}

class Student extends Person {
  double _cgpa;

  Student(String name, this._cgpa) : super(name);

  // Accessors
  double get cgpa => _cgpa;

  // Mutators
  set cgpa(double cgpa) => _cgpa = cgpa;

  @override
  bool isOutstanding() => _cgpa > 3.5;
}

class Professor extends Person {
  int _numberOfPublications;

  Professor(String name, this._numberOfPublications) : super(name);

  // Accessors
  int get numberOfPublications => _numberOfPublications;

  // Mutators
  set numberOfPublications(int numberOfPublications) =>
      _numberOfPublications = numberOfPublications;

  @override
  bool isOutstanding() => _numberOfPublications > 50;
}
