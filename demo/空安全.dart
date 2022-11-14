main(){
  List<String> l1 = ['张三','李四','王五'];
  l1 = null;
  print(l1);
  print(getData(null));

  String str = 'this is str';
  // str = null;
  print(str.length);

  Person p1 = new Person();
  p1.setInfo('张三', 20);
  p1.getInfo();
  print(printUserInfo('张三'));

  People p2 = People(name:'张三');
  p2.getInfo();
}

String getData(apiUrl){
  if(apiUrl!=null){
    return 'this is server data';
  }
  return null;
}


class Person{
  String name;
  int age;
  void setInfo(String name,int age){
    this.name = name;
    this.age = age;
  }
  getInfo(){
    print('${this.name}---${this.age}');
  }
}

class People{
  String name;
  int age;
  People({this.name,this.age});
  getInfo(){
    print('${this.name}---${this.age}');
  }
}


String printUserInfo(String username,{int age,String sex}){
  if(age!=0){
    return '姓名：$username --- 性别：$sex ---- 年龄：$age';
  }
  return '姓名：$username --- 性别：$sex ---- 年龄：保密';
}
