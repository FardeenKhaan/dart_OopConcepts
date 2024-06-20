import '5.Job.dart';

class Employee {
  late String _name, _address, _phoneNumber, _email;

  Employee(this._name, this._address, this._phoneNumber, this._email);

  Job obj = Job("Flutter_Developer", 100000, 51);

  void display() {
    print("Name: $_name");
    print("ID: ${obj.id}");
    print("Designation: ${obj.designation}");
    print("Address: $_address");
    print("Phone Number: $_phoneNumber");
    print("Email Address: $_email");
    print("Salary: ${obj.salary}\n");

    obj.greater()
        ? print("The employee's salary is greater than 50000.")
        : print("The employee's salary is less than 50000.");
  }
}

void main() {
  Employee emp1 =
      Employee("Fardeen", "Sukkur", "03143174139", "fardeen@gmail.com");
  emp1.display();
}
