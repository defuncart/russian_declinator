import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:russian_declinator/di_container.dart';
import 'package:russian_declinator/enums/case.dart';
import 'package:russian_declinator/extensions/case_extensions.dart';
import 'package:russian_declinator/services/databases/database.dart' show Noun;
import 'package:russian_declinator/widgets/common/word_with_stress.dart';

class NounDetail extends StatelessWidget {
  const NounDetail({
    required this.noun,
    Key? key,
  }) : super(key: key);

  final Noun noun;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final language = ref.watch(languageProvider).state.languageCode;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(noun.bare),
              const SizedBox(height: 8),
              if (language == 'en') ...[
                Text(noun.translationsEN),
                const SizedBox(height: 8),
              ],
              if (language == 'de') ...[
                Text(noun.translationsDE),
                const SizedBox(height: 8),
              ],
              for (final declensionCase in Case.values) NounRow(noun: noun, declensionCase: declensionCase),
            ],
          ),
        );
      },
    );
  }
}

class NounRow extends StatelessWidget {
  const NounRow({
    required this.noun,
    required this.declensionCase,
    Key? key,
  }) : super(key: key);

  final Noun noun;
  final Case declensionCase;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(declensionCase.localized),
        Expanded(
          child: WordWithStress(
            noun.singularForCase(declensionCase),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: WordWithStress(
            noun.pluralForCase(declensionCase),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

extension NounExtensions on Noun {
  String singularForCase(Case declensionCase) {
    switch (declensionCase) {
      case Case.nominative:
        return sgNom;
      case Case.genitive:
        return sgGen;
      case Case.dative:
        return sgDat;
      case Case.accusative:
        return sgAcc;
      case Case.instrumental:
        return sgInst;
      case Case.prepositional:
        return sgPrep;
    }
  }

  String pluralForCase(Case declensionCase) {
    switch (declensionCase) {
      case Case.nominative:
        return plNom;
      case Case.genitive:
        return plGen;
      case Case.dative:
        return plDat;
      case Case.accusative:
        return plAcc;
      case Case.instrumental:
        return plInst;
      case Case.prepositional:
        return plPrep;
    }
  }
}
