import './Person.dart';

void main() {
  Person p1 = new Person('张三', 20);
  // p1.printInfo();
  // print(p1._name);
  // print(p1.age);
  // p1.age = 30;
  // p1.sex = '女';
  // p1.printInfo();
  p1..age=30
  ..sex = 'man'
  ..printInfo();
}
