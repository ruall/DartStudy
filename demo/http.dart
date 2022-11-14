import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

Future<void> main() async {
  final client = RetryClient(http.Client());
  try {
    print(await client.read(Uri.http('news-at.zhihu.com','/api/3/stories/latest')));
  } finally {
    client.close();
  }
}
