import 'dart:io' show File, exit;

// ignore_for_file: avoid_print

Future<List<List<String>>> importCSV({
  required String filepath,
  int? expectedNumberRows,
  required int expectedNumberColumns,
}) async {
  if (!File(filepath).existsSync()) {
    print('File $filepath does not exist.');
    print('Please firstly run "dart bin/db/download_dev_assets.dart".');
    exit(0);
  }

  final contents = await File(filepath).readAsLines();
  final lines = contents.map((element) => element.split('	')).skip(1).toList();

  // ensure content is correctly formatted
  for (final line in lines) {
    if (line.length != expectedNumberColumns) {
      print('line $line is not well formatted. Has ${line.length} columns, expected $expectedNumberColumns.');
      exit(0);
    }
  }
  if (expectedNumberRows != null) {
    if (lines.length != expectedNumberRows) {
      print('${lines.length} is incorrect db length. Expected $expectedNumberRows.');
      exit(0);
    }
  }

  return lines;
}
