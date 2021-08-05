import 'package:flutter_test/flutter_test.dart';
import 'package:russian_declinator/enums/adjective_form.dart';
import 'package:russian_declinator/extensions/adjective_form_extensions.dart';

void main() {
  group('AdjectiveFormExtensions', () {
    test('isSingular', () {
      expect(AdjectiveForm.masc.isSingular, isTrue);
      expect(AdjectiveForm.fem.isSingular, isTrue);
      expect(AdjectiveForm.neu.isSingular, isTrue);
      expect(AdjectiveForm.plural.isSingular, isFalse);
    });

    test('isPlural', () {
      expect(AdjectiveForm.masc.isPlural, isFalse);
      expect(AdjectiveForm.fem.isPlural, isFalse);
      expect(AdjectiveForm.neu.isPlural, isFalse);
      expect(AdjectiveForm.plural.isPlural, isTrue);
    });
  });
}
