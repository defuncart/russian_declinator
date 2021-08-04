import 'package:flutter/material.dart';
import 'package:russian_declinator/extensions/string_extensions.dart';

class WordWithStress extends StatelessWidget {
  const WordWithStress(
    this.word, {
    this.textAlign,
    Key? key,
  }) : super(key: key);

  final String word;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final wordAsSyllables = word.wordAsSyllables;

    if (wordAsSyllables.stressPosition == null) {
      return Text(
        word,
        textAlign: textAlign,
      );
    } else {
      return Text.rich(
        TextSpan(
          children: [
            for (var i = 0; i < wordAsSyllables.syllables.length; i++)
              TextSpan(
                text: wordAsSyllables.syllables[i],
                style: wordAsSyllables.stressPosition == i
                    ? TextStyle(
                        color: Theme.of(context).accentColor,
                      )
                    : null,
              ),
          ],
        ),
        textAlign: textAlign,
      );
    }
  }
}
