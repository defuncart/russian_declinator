import 'package:russian_declinator/enums/adjective_form.dart';
import 'package:russian_declinator/enums/case.dart';
import 'package:russian_declinator/services/databases/database.dart' show Adjective;

extension AdjectiveExtensions on Adjective {
  List<String> get allDeclensions => [
        mNom,
        mGen,
        mDat,
        mAcc,
        mInst,
        mPrep,
        fNom,
        fGen,
        fDat,
        fAcc,
        fInst,
        fPrep,
        nNom,
        nGen,
        nDat,
        nAcc,
        nInst,
        nPrep,
        plNom,
        plGen,
        plDat,
        plAcc,
        plInst,
        plPrep,
      ];

  String declension({
    required AdjectiveForm form,
    required Case declenionCase,
    bool isAnimate = false,
  }) {
    switch (form) {
      case AdjectiveForm.masc:
        switch (declenionCase) {
          case Case.nominative:
            return mNom;
          case Case.genitive:
            return mGen;
          case Case.dative:
            return mDat;
          case Case.accusative:
            return isAnimate ? mGen : mNom;
          case Case.instrumental:
            return mInst;
          case Case.prepositional:
            return mPrep;
        }
      case AdjectiveForm.fem:
        switch (declenionCase) {
          case Case.nominative:
            return fNom;
          case Case.genitive:
            return fGen;
          case Case.dative:
            return fDat;
          case Case.accusative:
            return isAnimate ? fGen : fNom;
          case Case.instrumental:
            return fInst;
          case Case.prepositional:
            return fPrep;
        }
      case AdjectiveForm.neu:
        switch (declenionCase) {
          case Case.nominative:
            return nNom;
          case Case.genitive:
            return nGen;
          case Case.dative:
            return nDat;
          case Case.accusative:
            return isAnimate ? nGen : nNom;
          case Case.instrumental:
            return nInst;
          case Case.prepositional:
            return nPrep;
        }
      case AdjectiveForm.plural:
        switch (declenionCase) {
          case Case.nominative:
            return plNom;
          case Case.genitive:
            return plGen;
          case Case.dative:
            return plDat;
          case Case.accusative:
            return isAnimate ? plGen : plNom;
          case Case.instrumental:
            return plInst;
          case Case.prepositional:
            return plPrep;
        }
    }
  }

  List<String> form(AdjectiveForm form) {
    switch (form) {
      case AdjectiveForm.masc:
        return [mNom, mGen, mDat, mAcc, mInst, mPrep];
      case AdjectiveForm.fem:
        return [fNom, fGen, fDat, fAcc, fInst, fPrep];
      case AdjectiveForm.neu:
        return [nNom, nGen, nDat, nAcc, nInst, nPrep];
      case AdjectiveForm.plural:
        return [plNom, plGen, plDat, plAcc, plInst, plPrep];
    }
  }
}
