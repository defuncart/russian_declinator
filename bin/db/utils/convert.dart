import 'dart:io' show exit;

// ignore_for_file: avoid_print

Future<List<T>> convert<T extends Object>({
  required Future<List<List<String>>> Function() importCSV,
  required T Function({
    required List<String> line,
    required int id,
  })
      convert,
  List<String> toIgnore = const <String>[],
  int? length,
}) async {
  var lines = await importCSV();
  if (length != null) {
    if (length < 1 || length >= lines.length) {
      print('Length $length is invalid.');
      exit(0);
    }

    lines = lines.sublist(0, length);
  }

  var id = 0;
  final objects = <T>[];
  for (final line in lines) {
    if (toIgnore.contains(line.first)) {
      continue;
    }

    final object = convert(line: line, id: id);
    objects.add(object);
    id++;
  }

  return objects;
}
