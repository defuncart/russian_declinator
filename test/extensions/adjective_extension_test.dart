import 'package:flutter_test/flutter_test.dart';
import 'package:russian_declinator/extensions/adjective_extensions.dart';

import '../test_utils/test_instances.dart';

void main() {
  group('AdjectiveExtensions', () {
    group('allDeclensions', () {
      test('expect that correct value is returned', () {
        final adjective = TestInstances.adjective();
        final declensions = adjective.allDeclensions;
        expect(
          declensions,
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
  });
}
