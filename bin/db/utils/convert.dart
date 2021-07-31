Future<List<T>> convert<T extends Object>({
  required Future<List<List<String>>> Function() importCSV,
  required T Function({
    required List<String> line,
    required int id,
  })
      convert,
}) async {
  final lines = await importCSV();

  var id = 0;
  final objects = <T>[];
  for (final line in lines) {
    final object = convert(line: line, id: id);
    objects.add(object);
    id++;
  }

  return objects;
}
