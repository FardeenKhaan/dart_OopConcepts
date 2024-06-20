abstract class Movie {
  int _idNumber;
  String _title;
  int _numOfDaysRented;

  Movie(this._idNumber, this._title, this._numOfDaysRented);

  // Accessors
  int get idNumber => _idNumber;
  String get title => _title;
  int get numOfDaysRented => _numOfDaysRented;

  // Mutators
  set idNumber(int id) => _idNumber = id;
  set title(String title) => _title = title;
  set numOfDaysRented(int days) => _numOfDaysRented = days;

  // Abstract method for late fees
  double calcLateFees(int daysLate);

  // Equals method
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Movie) return false;
    return _idNumber == other._idNumber &&
        _title == other._title &&
        _numOfDaysRented == other._numOfDaysRented;
  }

  @override
  int get hashCode =>
      _idNumber.hashCode ^ _title.hashCode ^ _numOfDaysRented.hashCode;
}

class Action extends Movie {
  Action(int idNumber, String title, int numOfDaysRented)
      : super(idNumber, title, numOfDaysRented);

  @override
  double calcLateFees(int daysLate) => daysLate * 3.0;
}

class Comedy extends Movie {
  Comedy(int idNumber, String title, int numOfDaysRented)
      : super(idNumber, title, numOfDaysRented);

  @override
  double calcLateFees(int daysLate) => daysLate * 2.5;
}

class Drama extends Movie {
  Drama(int idNumber, String title, int numOfDaysRented)
      : super(idNumber, title, numOfDaysRented);

  @override
  double calcLateFees(int daysLate) => daysLate * 2.0;
}
