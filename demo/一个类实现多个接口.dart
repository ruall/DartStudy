abstract class A{
  printA();
}

abstract class B{
  printB();
}

class Person{
  String name;
  int age;
  Person(this.name,this.age);
  info(){
    print('${this.name}------${this.age}');
  }
}

class C implements A,B{
  @override
  printA() {
    print('printA');
  }

  @override
  printB() {
    print('printB');
  }

}

class D extends Person with A,B{
  D(String name, int age) : super(name, age);

  @override
  printA() {
    // TODO: implement printA
    throw UnimplementedError();
  }

  @override
  printB() {
    // TODO: implement printB
    throw UnimplementedError();
  }
}

main(){
  C c = new C();
  c.printA();
  c.printB();
  //
  // D d = new D('张三', 20);
  // d.printA();
  // d.printB();
  // d.info();
}
