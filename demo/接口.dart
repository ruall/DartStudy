import './lib/MySql.dart';
import './lib/MsSql.dart';

main(){
  Mysql mysql = new Mysql();
  mysql.add('xxxxx');

  Mssql mssql = new Mssql();
  mssql.add('abcde');
}
