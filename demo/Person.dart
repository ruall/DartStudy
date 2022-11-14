class Person{
  String _name; // 私有属性
  int age;
  String sex = '男';
  // 默认构造函数
  Person(this._name,this.age);
  Person.now(){
    print('命名构造函数');
  }
  Person.setInfo(String name,int age){
    this._name = name;
    this.age = age;
  }
  void printInfo(){
    print('${this._name}-----${this.age}----${this.sex}');
  }
}
