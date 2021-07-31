import 'dart:io' show File;

import 'package:archive/archive_io.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:russian_declinator/services/databases/database.dart' show Adjective, MyDatabase, Noun;

import 'utils/convert_adjectives.dart';
import 'utils/convert_nouns.dart';

// ignore_for_file: avoid_print

const _outputFilepath = 'assets/db/db.sqlite';
const _outputZipFilepath = 'assets/db/db.zip';

void main() async {
  final nouns = await convertNouns();
  final adjectives = await convertAdjectives();

  final db = MyDatabase(openConnection());
  await db.addMultipleNouns(nouns);
  await db.addMultipleAdjectives(adjectives);

  print('Written to $_outputFilepath!');

  final encoder = ZipFileEncoder();
  encoder.create(_outputZipFilepath);
  encoder.addFile(File(_outputFilepath));
  encoder.close();

  print('Written to $_outputZipFilepath!');
}

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final file = File(_outputFilepath);
    if (!file.existsSync()) {
      file.createSync(recursive: true);
    } else {
      file.deleteSync();
      file.createSync(recursive: true);
    }

    return VmDatabase(file);
  });
}

extension on MyDatabase {
  Future<void> addMultipleNouns(List<Noun> multipleNouns) => batch((batch) {
        batch.insertAll(nouns, multipleNouns);
      });

  Future<void> addMultipleAdjectives(List<Adjective> multipleAdjectives) => batch((batch) {
        batch.insertAll(adjectives, multipleAdjectives);
      });
}
