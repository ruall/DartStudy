import './Db.dart';

class Mysql implements Db {
  @override
  add(data) {
    print('这是Mysql的add方法' + data);
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  edit() {
    // TODO: implement edit
    throw UnimplementedError();
  }

  @override
  String uri;
}
