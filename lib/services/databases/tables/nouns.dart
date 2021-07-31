import 'package:moor/moor.dart';
import 'package:russian_declinator/services/databases/converters/gender_converter.dart';

class Nouns extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get bare => text()();
  TextColumn get accented => text()();
  // TextColumn get translationsEN => text()();
  // TextColumn get translationsDE => text()();
  IntColumn get gender => integer().map(const GenderConverter())();
  // partner
  BoolColumn get animate => boolean()();
  BoolColumn get indeclinable => boolean()();
  // sg_only
  // pl_only
  TextColumn get sgNom => text()();
  TextColumn get sgGen => text()();
  TextColumn get sgDat => text()();
  TextColumn get sgAcc => text()();
  TextColumn get sgInst => text()();
  TextColumn get sgPrep => text()();
  TextColumn get plNom => text()();
  TextColumn get plGen => text()();
  TextColumn get plDat => text()();
  TextColumn get plAcc => text()();
  TextColumn get plInst => text()();
  TextColumn get plPrep => text()();
}
