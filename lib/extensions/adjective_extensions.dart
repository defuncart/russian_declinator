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
}
