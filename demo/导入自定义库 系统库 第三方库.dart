import 'dart:math';

// 异步方法
testAsync() async{
  return 'Hello async';
}

main() async{
  print(min(12,2));
  print(max(12,2));
  var res = await testAsync();
  print(res);
}
