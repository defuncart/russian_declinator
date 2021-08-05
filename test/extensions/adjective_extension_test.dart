import 'package:flutter_test/flutter_test.dart';
import 'package:russian_declinator/enums/adjective_form.dart';
import 'package:russian_declinator/enums/case.dart';
import 'package:russian_declinator/extensions/adjective_extensions.dart';

import '../test_utils/test_instances.dart';

void main() {
  group('AdjectiveExtensions', () {
    group('allDeclensions', () {
      test('expect that correct value is returned', () {
        final adjective = TestInstances.adjective();
        expect(
          adjective.allDeclensions,
          [
            'mNom',
            'mGen',
            'mDat',
            'mAcc',
            'mInst',
            'mPrep',
            'fNom',
            'fGen',
            'fDat',
            'fAcc',
            'fInst',
            'fPrep',
            'nNom',
            'nGen',
            'nDat',
            'nAcc',
            'nInst',
            'nPrep',
            'plNom',
            'plGen',
            'plDat',
            'plAcc',
            'plInst',
            'plPrep',
          ],
        );
      });
    });

    group('declension', () {
      final adjective = TestInstances.adjective();

      test('${AdjectiveForm.masc} expect correct values', () {
        expect(
          adjective.declension(
            form: AdjectiveForm.masc,
            declenionCase: Case.nominative,
          ),
          'mNom',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.masc,
            declenionCase: Case.genitive,
          ),
          'mGen',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.masc,
            declenionCase: Case.dative,
          ),
          'mDat',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.masc,
            declenionCase: Case.accusative,
            isAnimate: true,
          ),
          'mGen',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.masc,
            declenionCase: Case.accusative,
            isAnimate: false,
          ),
          'mNom',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.masc,
            declenionCase: Case.instrumental,
          ),
          'mInst',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.masc,
            declenionCase: Case.prepositional,
          ),
          'mPrep',
        );
      });

      test('${AdjectiveForm.fem} expect correct values', () {
        expect(
          adjective.declension(
            form: AdjectiveForm.fem,
            declenionCase: Case.nominative,
          ),
          'fNom',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.fem,
            declenionCase: Case.genitive,
          ),
          'fGen',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.fem,
            declenionCase: Case.dative,
          ),
          'fDat',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.fem,
            declenionCase: Case.accusative,
            isAnimate: true,
          ),
          'fGen',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.fem,
            declenionCase: Case.accusative,
            isAnimate: false,
          ),
          'fNom',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.fem,
            declenionCase: Case.instrumental,
          ),
          'fInst',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.fem,
            declenionCase: Case.prepositional,
          ),
          'fPrep',
        );
      });

      test('${AdjectiveForm.neu} expect correct values', () {
        expect(
          adjective.declension(
            form: AdjectiveForm.neu,
            declenionCase: Case.nominative,
          ),
          'nNom',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.neu,
            declenionCase: Case.genitive,
          ),
          'nGen',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.neu,
            declenionCase: Case.dative,
          ),
          'nDat',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.neu,
            declenionCase: Case.accusative,
            isAnimate: true,
          ),
          'nGen',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.neu,
            declenionCase: Case.accusative,
            isAnimate: false,
          ),
          'nNom',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.neu,
            declenionCase: Case.instrumental,
          ),
          'nInst',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.neu,
            declenionCase: Case.prepositional,
          ),
          'nPrep',
        );
      });

      test('${AdjectiveForm.plural} expect correct values', () {
        expect(
          adjective.declension(
            form: AdjectiveForm.plural,
            declenionCase: Case.nominative,
          ),
          'plNom',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.plural,
            declenionCase: Case.genitive,
          ),
          'plGen',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.plural,
            declenionCase: Case.dative,
          ),
          'plDat',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.plural,
            declenionCase: Case.accusative,
            isAnimate: true,
          ),
          'plGen',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.plural,
            declenionCase: Case.accusative,
            isAnimate: false,
          ),
          'plNom',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.plural,
            declenionCase: Case.instrumental,
          ),
          'plInst',
        );
        expect(
          adjective.declension(
            form: AdjectiveForm.plural,
            declenionCase: Case.prepositional,
          ),
          'plPrep',
        );
      });
    });

    group('form', () {
      final adjective = TestInstances.adjective();

      test('${AdjectiveForm.masc} ensure correct values', () {
        expect(
          adjective.form(AdjectiveForm.masc),
          ['mNom', 'mGen', 'mDat', 'mAcc', 'mInst', 'mPrep'],
        );
      });

      test('${AdjectiveForm.fem} ensure correct values', () {
        expect(
          adjective.form(AdjectiveForm.fem),
          ['fNom', 'fGen', 'fDat', 'fAcc', 'fInst', 'fPrep'],
        );
      });

      test('${AdjectiveForm.neu} ensure correct values', () {
        expect(
          adjective.form(AdjectiveForm.neu),
          ['nNom', 'nGen', 'nDat', 'nAcc', 'nInst', 'nPrep'],
        );
      });

      test('${AdjectiveForm.plural} ensure correct values', () {
        expect(
          adjective.form(AdjectiveForm.plural),
          ['plNom', 'plGen', 'plDat', 'plAcc', 'plInst', 'plPrep'],
        );
      });
    });
  });
}
