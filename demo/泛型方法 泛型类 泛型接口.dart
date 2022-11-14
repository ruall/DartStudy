T getData<T>(T value){
  return value;
}

class MyList<T>{
  List list = <T>[];
  void add(T value){
    this.list.add(value);
  }
  List getList(){
    return list;
  }
}

abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key,T value);
}

class FileCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, T value) {
    print('我是内存缓存，把key=${key}  value=${value}的数据吸入文件中');
  }
}

class MemoryCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, T value) {
    print('我是内存缓存，把key=${key}  value=${value}的数据吸入内存中');
  }

}

main(){
  // print(getData(123));
  // print(getData('xxx'));
  // print(getData<String>('xxx'));
  // print(getData<num>(123.123));
  //
  // List list1 = new List<String>.filled(2, '');
  // List list2 = new List<num>.filled(2, 0);
  // list1[0] = '张三';
  // list1[1] = '李四';
  // list2[0] = 1;
  // list2[1] = 2;
  // // print(list1);
  // print(list2);
  // MyList l1 = new MyList();
  // l1.add(123);
  // l1.add('张三');
  // l1.add(true);
  // print(l1.getList());
  //
  // MyList l2 = new MyList<String>();
  // l2.add('张三');
  // l2.add('李四');
  // MyList l3 = new MyList<int>();
  // l3.add(123);
  // l3.add(456);
  // print(l3.getList());

  MemoryCache m = new MemoryCache<String>();
  m.setByKey('index', '数据信息');
  MemoryCache m1 = new MemoryCache<Map>();
  m1.setByKey('index', {'name':'张三','age':20});
}
