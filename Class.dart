// 类中的getter和setter方法
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  String get getName => name;

  set setName(String name) => this.name = name;

  int get getAge => age;

  set setAge(int age) => this.age = age;
}

class Animal {
  String name;

  //构造函数个默认值
  Animal() : name = 'Animal' {
    print(this.name);
  }
}

class Dog {
  String? name;

  Dog(String name) {
    this.name = name;
  }

  Dog.named() {
    print('命名构造函数');
  }

  void printName() {
    print(this.name);
  }
}

class A1 {
  static String name = 'A1';
  int age = 20;
  static void main() {
    print(name);
    //print(this.age); //静态方法不能访问非静态变量
  }
  void printName() {
    main();
    print(name);
    print(this.age); // 非静态方法可以访问静态变量和非静态变量以及静态方法
  }
}

void main() {
  var person = Person('张三', 20);
  print(person.getName);
  person.setName = '李四';
  print(person.getName);
  print(person.getAge);
  person.setAge = 30;
  print(person.getAge);

  var animal = Animal();

  var dog = Dog('小狗');
  dog.printName();
  var dog1 = Dog.named();

  print(A1.name);
  A1.main();
  var a1 = new A1();
  a1.printName();
}
