import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension StringExtensions on String {
  WordAsSyllables get wordAsSyllables {
    final index = indexOf("'");
    if (index == -1) {
      return WordAsSyllables(
        syllables: [this],
        stressPosition: null,
      );
    } else {
      if (index == 1) {
        //first letter
        return WordAsSyllables(
          syllables: [
            substring(0, index),
            substring(index + 1, length),
          ],
          stressPosition: 0,
        );
      } else if (index == length - 1) {
        // last letter
        return WordAsSyllables(
          syllables: [
            substring(0, index - 1),
            substring(index - 1, index),
          ],
          stressPosition: 1,
        );
      } else {
        // in the middle somewhere
        return WordAsSyllables(
          syllables: [
            substring(0, index - 1),
            substring(index - 1, index),
            substring(index + 1, length),
          ],
          stressPosition: 1,
        );
      }
    }
  }
}

@immutable
class WordAsSyllables {
  const WordAsSyllables({
    required this.syllables,
    this.stressPosition,
  });
  /*: assert(
          syllables.length == 1 && stressPosition != null,
          'No stress position expected for single syllable',
        ),
        assert(
          syllables.length > 1 && stressPosition == null,
          'Stress position expected for multiple syllables',
        );*/

  final List<String> syllables;
  final int? stressPosition;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WordAsSyllables && listEquals(other.syllables, syllables) && other.stressPosition == stressPosition;
  }

  @override
  int get hashCode => syllables.hashCode ^ stressPosition.hashCode;

  @override
  String toString() => '{syllables: $syllables, stressPosition: $stressPosition}';
}
