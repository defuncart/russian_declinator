import 'dart:io' show File, exit;

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:russian_declinator/enums/gender.dart';
import 'package:russian_declinator/services/databases/database.dart' show MyDatabase, Noun;

// ignore_for_file: avoid_print

const _inputFilepath = 'assets_dev/temp/nouns.csv';
const _outputFilepath = 'assets/db/db.sqlite';

void main() async {
  if (!File(_inputFilepath).existsSync()) {
    print('File $_inputFilepath does not exist.');
    print('Please firstly run "dart bin/db/download_dev_assets.dart".');
    exit(0);
  }

  final contents = await File(_inputFilepath).readAsLines();
  final lines = contents.map((element) => element.split('	')).toList().skip(1);

  // ensure content is correctly formatted
  for (final line in lines) {
    if (line.length != 22) {
      print('line $line is not well formatted');
      exit(0);
    }
  }
  if (lines.length != 10) {
    print('${lines.length} is incorrect db length');
    exit(0);
  }

  var id = 0;
  final nouns = <Noun>[];
  for (final line in lines) {
    final noun = Noun(
      id: id,
      bare: line[_NounIndex.bare],
      accented: line[_NounIndex.accented],
      translationsEN: line[_NounIndex.translationsEN],
      translationsDE: line[_NounIndex.translationsDE],
      gender: _genderFromString(line[_NounIndex.gender]),
      animate: line[_NounIndex.animate] == '1',
      indeclinable: line[_NounIndex.indeclinable] == '1',
      sgNom: line[_NounIndex.sgNom],
      sgGen: line[_NounIndex.sgGen],
      sgDat: line[_NounIndex.sgDat],
      sgAcc: line[_NounIndex.sgAcc],
      sgInst: line[_NounIndex.sgInst],
      sgPrep: line[_NounIndex.sgPrep],
      plNom: line[_NounIndex.plNom],
      plGen: line[_NounIndex.plGen],
      plDat: line[_NounIndex.plDat],
      plAcc: line[_NounIndex.plAcc],
      plInst: line[_NounIndex.plInst],
      plPrep: line[_NounIndex.plPrep],
    );
    nouns.add(noun);
    id++;
  }

  final db = MyDatabase(openConnection());
  await db.addMultipleNouns(nouns);

  print('Written to $_outputFilepath!');
}

const _genders = {
  'm': Gender.masculine,
  'f': Gender.feminine,
  'n': Gender.neutral,
};

Gender _genderFromString(String gender) {
  if (!_genders.keys.contains(gender)) {
    throw ArgumentError('Gender ${gender.toString()} is not valid');
  }

  return _genders[gender]!;
}

// ignore_for_file: unused_field, constant_identifier_names

abstract class _NounIndex {
  static const bare = 0;
  static const accented = 1;
  static const translationsEN = 2;
  static const translationsDE = 3;
  static const gender = 4;
  static const partner = 5;
  static const animate = 6;
  static const indeclinable = 7;
  static const sgOnly = 8;
  static const plOnly = 9;
  static const sgNom = 10;
  static const sgGen = 11;
  static const sgDat = 12;
  static const sgAcc = 13;
  static const sgInst = 14;
  static const sgPrep = 15;
  static const plNom = 16;
  static const plGen = 17;
  static const plDat = 18;
  static const plAcc = 19;
  static const plInst = 20;
  static const plPrep = 21;
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
}
