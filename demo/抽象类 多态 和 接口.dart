abstract class Animal {
  eat(); //抽象方法
  run();
  printInfo(){
    print('我是一个抽象类中的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗在啃骨头');
  }

  @override
  run() {
    print('小狗在跑');
  }

  void jump(){
    print('小狗在跳');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃老鼠');
  }

  @override
  run() {
    print('小猫在跑');
  }

  void jump(){
    print('小猫在跳');
  }
}

void main() {
  // Dog d1 = new Dog();
  // d1.eat();
  // d1.printInfo();
  // d1.jump();

  Animal d2 = new Dog();
  d2.eat();

  Animal c1 = new Cat();
  c1.eat();

}
