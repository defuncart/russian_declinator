import 'package:russian_declinator/services/databases/database.dart';

extension NounExtensions on Noun {
  List<String> get allDeclensions => [
        sgNom,
        sgGen,
        sgDat,
        sgAcc,
        sgInst,
        sgPrep,
        plNom,
        plGen,
        plDat,
        plAcc,
        plInst,
        plPrep,
      ];
}
