import 'package:flutter_test/flutter_test.dart';
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
  });
}
