import 'package:russian_declinator/enums/case.dart';
import 'package:russian_declinator/enums/noun_form.dart';
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

  String declension({
    required NounForm form,
    required Case declenionCase,
  }) {
    switch (form) {
      case NounForm.singular:
        switch (declenionCase) {
          case Case.nominative:
            return sgNom;
          case Case.genitive:
            return sgGen;
          case Case.dative:
            return sgDat;
          case Case.accusative:
            return sgAcc;
          case Case.instrumental:
            return sgInst;
          case Case.prepositional:
            return sgPrep;
        }
      case NounForm.plural:
        switch (declenionCase) {
          case Case.nominative:
            return plNom;
          case Case.genitive:
            return plGen;
          case Case.dative:
            return plDat;
          case Case.accusative:
            return plAcc;
          case Case.instrumental:
            return plInst;
          case Case.prepositional:
            return plPrep;
        }
    }
  }
}
