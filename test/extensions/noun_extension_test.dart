import 'package:flutter_test/flutter_test.dart';
import 'package:russian_declinator/extensions/noun_extensions.dart';

import '../test_utils/test_instances.dart';

void main() {
  group('NounExtensions', () {
    group('allDeclensions', () {
      test('when noun contains all declensions, expect all declensions', () {
        final noun = TestInstances.noun();
        final declensions = noun.allDeclensions;
        expect(
          declensions,
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
    });
  });
}
