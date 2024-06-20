class Address {
  String street;
  String city;
  String state;
  String zip;

  Address(this.street, this.city, this.state, this.zip);

  @override
  String toString() {
    return '$street, $city, $state, $zip';
  }
}

class Date {
  int day;
  int month;
  int year;

  Date(this.day, this.month, this.year);

  @override
  String toString() {
    return '$day/$month/$year';
  }
}

class Person {
  String _name;
  Address _address;
  String _phoneNumber;
  String _emailAddress;

  Person(this._name, this._address, this._phoneNumber, this._emailAddress);

  // Getters
  String get name => _name;
  Address get address => _address;
  String get phoneNumber => _phoneNumber;
  String get emailAddress => _emailAddress;

  // Setters
  set name(String name) => _name = name;
  set address(Address address) => _address = address;
  set phoneNumber(String phoneNumber) => _phoneNumber = phoneNumber;
  set emailAddress(String emailAddress) => _emailAddress = emailAddress;

  @override
  String toString() {
    return 'Name: $_name, Address: $_address, Phone: $_phoneNumber, Email: $_emailAddress';
  }
}

class Student extends Person {
  String _status;

  Student(String name, Address address, String phoneNumber, String emailAddress,
      this._status)
      : super(name, address, phoneNumber, emailAddress);

  // Getter
  String get status => _status;

  // Setter
  set status(String status) => _status = status;

  @override
  String toString() {
    return '${super.toString()}, Status: $_status';
  }
}

class Employee extends Person {
  String _office;
  double _salary;
  Date _dateHired;

  Employee(String name, Address address, String phoneNumber,
      String emailAddress, this._office, this._salary, this._dateHired)
      : super(name, address, phoneNumber, emailAddress);

  // Getters
  String get office => _office;
  double get salary => _salary;
  Date get dateHired => _dateHired;

  // Setters
  set office(String office) => _office = office;
  set salary(double salary) => _salary = salary;
  set dateHired(Date dateHired) => _dateHired = dateHired;

  @override
  String toString() {
    return '${super.toString()}, Office: $_office, Salary: $_salary, Date Hired: $_dateHired';
  }
}

class Faculty extends Employee {
  String _officeHours;
  String _rank;

  Faculty(
      String name,
      Address address,
      String phoneNumber,
      String emailAddress,
      String office,
      double salary,
      Date dateHired,
      this._officeHours,
      this._rank)
      : super(name, address, phoneNumber, emailAddress, office, salary,
            dateHired);

  // Getters
  String get officeHours => _officeHours;
  String get rank => _rank;

  // Setters
  set officeHours(String officeHours) => _officeHours = officeHours;
  set rank(String rank) => _rank = rank;

  void display() {
    print('${super.toString()}, Office Hours: $_officeHours, Rank: $_rank');
  }
}

class Staff extends Employee {
  String _title;

  Staff(String name, Address address, String phoneNumber, String emailAddress,
      String office, double salary, Date dateHired, this._title)
      : super(name, address, phoneNumber, emailAddress, office, salary,
            dateHired);

  // Getter
  String get title => _title;

  // Setter
  set title(String title) => _title = title;

  void display() {
    print('${super.toString()}, Title: $_title');
  }
}

void main() {
  Address address = Address('Muet', 'UET', 'Jamshoro', 'Pakistan');
  Date dateHired = Date(19, 6, 2024);

  Faculty faculty = Faculty('Fardeen', address, 'Muet', 'faculty@muet.edu.pk',
      'Office 101', 75000, dateHired, '9-5', 'Professor');
  Staff staff = Staff('Fardeen khan', address, 'MUET', 'fardeen@gmail.com',
      'Office 102', 50000, dateHired, 'Administrator');

  faculty.display();
  staff.display();
}
