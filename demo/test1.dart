class Person {
  String name;
  int age;

  Person(this.name, this.age);

  Person.xxx(this.age, this.name);

  void printInfo() {
    print('${this.name}---${this.age}');
  }

  void work() {
    print('${this.name}学习中。。。');
  }
}

class Web extends Person {
  String sex;

  Web(String name, int age, String sex) : super(name, age);

  void run() {
    print('${this.name}---${this.age}---${this.sex}');
    super.work(); // 在子类中调用父类的方法
  }

  // 覆写父类的方法
  @override
  void work() {
    print('${this.name}在工作中。。。');
  }
}

void main() {
  Person p1 = new Person('张三', 20);
  p1.printInfo();

  Web w1 = new Web('李四', 30, '男');
  w1.printInfo();
  w1.run();
  w1.work();
}
