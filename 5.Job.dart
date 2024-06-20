class Job {
  String _designation;
  double _salary;
  int _id;

  // Constructor
  Job(this._designation, this._salary, this._id);

  // Getters
  String get designation => _designation;
  double get salary => _salary;
  int get id => _id;

  // Setters
  set designation(String designation) => _designation = designation;
  set salary(double salary) => _salary = salary;
  set id(int id) => _id = id;

  bool greater() {
    return _salary > 50000;
  }
}
