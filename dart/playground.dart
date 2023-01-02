class Employee {
  String name;
  int age;
  String subject;
  double salary;

  Employee(this.name, this.age, [this.subject = "N/A", this.salary = 0]);
  Employee.named(
      {required this.name,
      required this.age,
      this.subject = "N/A",
      this.salary = 0});

  void display() {
    print("Name: ${name}");
    print("Name: ${age}");
    print("Name: ${subject}");
    print("Name: ${salary}");
  }
}

void main(List<String> args) {
  Employee employee = Employee("John", 30);
  Employee employee2 = Employee.named(name: "John", age: 30);

  employee.display();
  employee2.display();
}
