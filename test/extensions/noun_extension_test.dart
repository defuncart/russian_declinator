import 'package:flutter_test/flutter_test.dart';
import 'package:russian_declinator/enums/case.dart';
import 'package:russian_declinator/enums/noun_form.dart';
import 'package:russian_declinator/extensions/noun_extensions.dart';

import '../test_utils/test_instances.dart';

void main() {
  group('NounExtensions', () {
    group('allDeclensions', () {
      test('when noun is not singular or plural only, expect all declensions', () {
        final noun = TestInstances.noun();
        expect(
          noun.allDeclensions,
          [
            'sgNom',
            'sgGen',
            'sgDat',
            'sgAcc',
            'sgInst',
            'sgPrep',
            'plNom',
            'plGen',
            'plDat',
            'plAcc',
            'plInst',
            'plPrep',
          ],
        );
      });

      test('when noun is singular only, expect only singular declensions', () {
        final noun = TestInstances.noun(
          isSingular: true,
          plNom: '',
          plGen: '',
          plDat: '',
          plAcc: '',
          plInst: '',
          plPrep: '',
        );
        expect(
          noun.allDeclensions,
          [
            'sgNom',
            'sgGen',
            'sgDat',
            'sgAcc',
            'sgInst',
            'sgPrep',
          ],
        );
      });

      test('when noun is plural only, expect only plural declensions', () {
        final noun = TestInstances.noun(
          isPlural: true,
          sgNom: '',
          sgGen: '',
          sgDat: '',
          sgAcc: '',
          sgInst: '',
          sgPrep: '',
        );
        expect(
          noun.allDeclensions,
          [
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
      final noun = TestInstances.noun();

      test('${NounForm.singular} expect correct values', () {
        expect(
          noun.declension(
            form: NounForm.singular,
            declenionCase: Case.nominative,
          ),
          'sgNom',
        );
        expect(
          noun.declension(
            form: NounForm.singular,
            declenionCase: Case.genitive,
          ),
          'sgGen',
        );
        expect(
          noun.declension(
            form: NounForm.singular,
            declenionCase: Case.dative,
          ),
          'sgDat',
        );

        expect(
          noun.declension(
            form: NounForm.singular,
            declenionCase: Case.accusative,
          ),
          'sgAcc',
        );
        expect(
          noun.declension(
            form: NounForm.singular,
            declenionCase: Case.instrumental,
          ),
          'sgInst',
        );
        expect(
          noun.declension(
            form: NounForm.singular,
            declenionCase: Case.prepositional,
          ),
          'sgPrep',
        );
      });

      test('${NounForm.plural} expect correct values', () {
        expect(
          noun.declension(
            form: NounForm.plural,
            declenionCase: Case.nominative,
          ),
          'plNom',
        );
        expect(
          noun.declension(
            form: NounForm.plural,
            declenionCase: Case.genitive,
          ),
          'plGen',
        );
        expect(
          noun.declension(
            form: NounForm.plural,
            declenionCase: Case.dative,
          ),
          'plDat',
        );

        expect(
          noun.declension(
            form: NounForm.plural,
            declenionCase: Case.accusative,
          ),
          'plAcc',
        );
        expect(
          noun.declension(
            form: NounForm.plural,
            declenionCase: Case.instrumental,
          ),
          'plInst',
        );
        expect(
          noun.declension(
            form: NounForm.plural,
            declenionCase: Case.prepositional,
          ),
          'plPrep',
        );
      });
    });
  });
}
