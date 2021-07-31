import 'package:russian_declinator/services/databases/database.dart' show Adjective;

import 'convert.dart';
import 'import_csv.dart';

const _inputFilepath = 'assets_dev/db/adjectives.csv';

Future<List<Adjective>> convertAdjectives() async => convert(
      importCSV: () => importCSV(
        filepath: _inputFilepath,
        expectedNumberRows: 100,
        expectedNumberColumns: 34,
      ),
      convert: ({required int id, required List<String> line}) => Adjective(
        id: id,
        bare: line[_AdjectiveIndex.bare],
        accented: line[_AdjectiveIndex.accented],
        // translationsEN: line[_AdjectiveIndex.translationsEN],
        // translationsDE: line[_AdjectiveIndex.translationsDE],
        mNom: line[_AdjectiveIndex.plNom],
        mGen: line[_AdjectiveIndex.mGen],
        mDat: line[_AdjectiveIndex.mDat],
        mAcc: line[_AdjectiveIndex.mAcc],
        mInst: line[_AdjectiveIndex.mInst],
        mPrep: line[_AdjectiveIndex.mPrep],
        fNom: line[_AdjectiveIndex.fNom],
        fGen: line[_AdjectiveIndex.fGen],
        fDat: line[_AdjectiveIndex.fDat],
        fAcc: line[_AdjectiveIndex.fAcc],
        fInst: line[_AdjectiveIndex.fInst],
        fPrep: line[_AdjectiveIndex.fPrep],
        nNom: line[_AdjectiveIndex.nNom],
        nGen: line[_AdjectiveIndex.nGen],
        nDat: line[_AdjectiveIndex.nDat],
        nAcc: line[_AdjectiveIndex.nAcc],
        nInst: line[_AdjectiveIndex.nInst],
        nPrep: line[_AdjectiveIndex.nPrep],
        plNom: line[_AdjectiveIndex.plNom],
        plGen: line[_AdjectiveIndex.plGen],
        plDat: line[_AdjectiveIndex.plDat],
        plAcc: line[_AdjectiveIndex.plAcc],
        plInst: line[_AdjectiveIndex.plInst],
        plPrep: line[_AdjectiveIndex.plPrep],
      ),
    );

// ignore_for_file: unused_field, constant_identifier_names

abstract class _AdjectiveIndex {
  static const bare = 0;
  static const accented = 1;
  static const translationsEN = 2;
  static const translationsDE = 3;
  static const comparative = 4;
  static const superlative = 5;
  static const short_m = 6;
  static const short_f = 7;
  static const short_n = 8;
  static const short_pl = 9;
  static const mNom = 10;
  static const mGen = 11;
  static const mDat = 12;
  static const mAcc = 13;
  static const mInst = 14;
  static const mPrep = 15;
  static const fNom = 16;
  static const fGen = 17;
  static const fDat = 18;
  static const fAcc = 19;
  static const fInst = 20;
  static const fPrep = 21;
  static const nNom = 22;
  static const nGen = 23;
  static const nDat = 24;
  static const nAcc = 25;
  static const nInst = 26;
  static const nPrep = 27;
  static const plNom = 28;
  static const plGen = 29;
  static const plDat = 30;
  static const plAcc = 31;
  static const plInst = 32;
  static const plPrep = 33;
}
