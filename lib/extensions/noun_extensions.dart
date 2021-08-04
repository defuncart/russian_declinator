import 'package:russian_declinator/services/databases/database.dart' show Noun;

extension NounExtensions on Noun {
  List<String> get allDeclensions => [
        if (!isPlural) ...[
          sgNom,
          sgGen,
          sgDat,
          sgAcc,
          sgInst,
          sgPrep,
        ],
        if (!isSingular) ...[
          plNom,
          plGen,
          plDat,
          plAcc,
          plInst,
          plPrep,
        ]
      ];
}
