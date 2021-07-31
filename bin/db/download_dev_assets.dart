import 'dart:async';
import 'dart:convert';
import 'dart:io';

const _files = {
  'assets_dev/db/adjectives.csv':
      'https://raw.githubusercontent.com/Badestrand/russian-dictionary/master/adjectives.csv',
  'assets_dev/db/nouns.csv': 'https://raw.githubusercontent.com/Badestrand/russian-dictionary/master/nouns.csv',
};

void main() async {
  final client = HttpClient();
  for (final kvp in _files.entries) {
    final filepath = kvp.key;
    final link = kvp.value;

    final response = await client.getUrl(Uri.parse(link)).then(
          (HttpClientRequest request) => request.close(),
        );
    final contents = await response.readAsString();

    final file = File(filepath);
    if (!file.existsSync()) {
      file.createSync(recursive: true);
    }
    await file.writeAsString(contents);
  }
}

extension on HttpClientResponse {
  Future<String> readAsString() async {
    final completer = Completer<String>();
    final contents = StringBuffer();
    transform(utf8.decoder).listen((data) {
      contents.write(data);
    }, onDone: () => completer.complete(contents.toString()));
    return completer.future;
  }
}
