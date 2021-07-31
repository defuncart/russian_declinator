import 'package:russian_declinator/enums/gender.dart';
import 'package:russian_declinator/services/databases/database.dart' show Noun;

import 'convert.dart';
import 'import_csv.dart';

const _inputFilepath = 'assets_dev/db/nouns.csv';

Future<List<Noun>> convertNouns() async => convert(
      importCSV: () => importCSV(
        filepath: _inputFilepath,
        expectedNumberRows: 100,
        expectedNumberColumns: 22,
      ),
      convert: ({required int id, required List<String> line}) => Noun(
        id: id,
        bare: line[_NounIndex.bare],
        accented: line[_NounIndex.accented],
        // translationsEN: line[_NounIndex.translationsEN],
        // translationsDE: line[_NounIndex.translationsDE],
        gender: _genderFromString(line[_NounIndex.gender]),
        isAnimate: line[_NounIndex.animate] == '1',
        isIndeclinable: line[_NounIndex.indeclinable] == '1',
        isSingular: line[_NounIndex.sgOnly] == '1',
        isPlural: line[_NounIndex.plOnly] == '1',
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
      ),
    );

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

// ignore_for_file: unused_field

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
