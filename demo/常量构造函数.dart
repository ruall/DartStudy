class Container{
  final int width;
  final int height;
  const Container(this.width,this.height);
}

main(){
  // var c1 = new Container(100, 100);
  // var c2 = new Container(100, 100);
  // print(identical(c1, c2)); // false

  var c1 = const Container(100, 100);
  var c2 = const Container(100, 100);
  print(identical(c1, c2)); // true
}
