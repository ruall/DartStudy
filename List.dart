void main() {
  List list = [
    {
      'name': 'John1',
      'class': ['A', 'B', 'C']
    },
    {
      'name': 'John2',
      'class': ['A', 'B', 'C']
    },
    {
      'name': 'John3',
      'class': ['A', 'B', 'C']
    }
  ];

  for (var i = 0; i < list.length; i++) {
    print(list[i]['name']);
    for (var j = 0; j < list[i]['class'].length; j++) {
      print(list[i]['class'][j]);
    }
    print('------------');
  }

  //打印1-100的总和
  var sum = 0;
  var i = 0;
  while (i <= 100) {
    sum += i;
    i++;
  }
  print(sum);

  //打印1-100的总和
  var sum1 = 0;
  var j = 0;
  do {
    sum1 += j;
    j++;
  } while (j <= 100);
  print(sum1);

}
