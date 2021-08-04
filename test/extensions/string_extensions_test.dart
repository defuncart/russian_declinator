import 'package:flutter_test/flutter_test.dart';
import 'package:russian_declinator/extensions/string_extensions.dart';

void main() {
  group('StringExtensions', () {
    test('when no stress mark, expect one element', () {
      final result = 'глаз'.wordAsSyllables;
      expect(
        result,
        const WordAsSyllables(
          syllables: ['глаз'],
          stressPosition: null,
        ),
      );
    });

    test('when stress mark in middle, expect three elements', () {
      var result = "го'д".wordAsSyllables;
      expect(
        result,
        const WordAsSyllables(
          syllables: ['г', 'о', 'д'],
          stressPosition: 1,
        ),
      );

      result = "доро'ге".wordAsSyllables;
      expect(
        result,
        const WordAsSyllables(
          syllables: ['дор', 'о', 'ге'],
          stressPosition: 1,
        ),
      );
    });

    test('when stress mark at the beginning, expect two elements', () {
      final result = "у'ж".wordAsSyllables;
      expect(
        result,
        const WordAsSyllables(
          syllables: ['у', 'ж'],
          stressPosition: 0,
        ),
      );
    });

    test('when stress mark at the end, expect two elements', () {
      final result = "рука'".wordAsSyllables;
      expect(
        result,
        const WordAsSyllables(
          syllables: ['рук', 'а'],
          stressPosition: 1,
        ),
      );
    });
  });

  group('WordAsSyllables', () {
    test(
        'when syllables.length == 1 && stressPosition != null, '
        'expect an assertion to be thrown', () {
      expect(
        () => const WordAsSyllables(
          syllables: ['глаз'],
          stressPosition: 2,
        ),
        throwsAssertionError,
      );
    }, skip: true);

    test(
        'when syllables.length > 1 && stressPosition == null, '
        'expect an assertion to be thrown', () {
      expect(
        () => const WordAsSyllables(
          syllables: ['г', 'о', 'д'],
          stressPosition: null,
        ),
        throwsAssertionError,
      );
    }, skip: true);
  });
}
