import 'package:moor/moor.dart';

class Adjectives extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get bare => text()();
  TextColumn get accented => text()();
  // TextColumn get translationsEN => text()();
  // TextColumn get translationsDE => text()();
  // comparative
// superlative
// short_m
// short_f
// short_n
// short_pl
  TextColumn get mNom => text()();
  TextColumn get mGen => text()();
  TextColumn get mDat => text()();
  TextColumn get mAcc => text()();
  TextColumn get mInst => text()();
  TextColumn get mPrep => text()();
  TextColumn get fNom => text()();
  TextColumn get fGen => text()();
  TextColumn get fDat => text()();
  TextColumn get fAcc => text()();
  TextColumn get fInst => text()();
  TextColumn get fPrep => text()();
  TextColumn get nNom => text()();
  TextColumn get nGen => text()();
  TextColumn get nDat => text()();
  TextColumn get nAcc => text()();
  TextColumn get nInst => text()();
  TextColumn get nPrep => text()();
  TextColumn get plNom => text()();
  TextColumn get plGen => text()();
  TextColumn get plDat => text()();
  TextColumn get plAcc => text()();
  TextColumn get plInst => text()();
  TextColumn get plPrep => text()();
}
