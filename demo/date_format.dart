import 'package:date_format/date_format.dart';

main(){
  print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
}
