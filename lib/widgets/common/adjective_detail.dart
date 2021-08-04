import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:russian_declinator/di_container.dart';
import 'package:russian_declinator/enums/case.dart';
import 'package:russian_declinator/extensions/case_extensions.dart';
import 'package:russian_declinator/services/databases/database.dart' show Adjective;
import 'package:russian_declinator/widgets/common/word_with_stress.dart';

class AdjectiveDetail extends StatelessWidget {
  const AdjectiveDetail({
    required this.adjective,
    Key? key,
  }) : super(key: key);

  final Adjective adjective;

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
              Text(adjective.bare),
              const SizedBox(height: 8),
              if (language == 'en') ...[
                Text(adjective.translationsEN),
                const SizedBox(height: 8),
              ],
              if (language == 'de') ...[
                Text(adjective.translationsDE),
                const SizedBox(height: 8),
              ],
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const DeclensionColumn(),
                  AdjectiveColumn(
                    adjective: adjective,
                    form: AdjectiveForm.masc,
                  ),
                  AdjectiveColumn(
                    adjective: adjective,
                    form: AdjectiveForm.fem,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const DeclensionColumn(),
                  AdjectiveColumn(
                    adjective: adjective,
                    form: AdjectiveForm.neu,
                  ),
                  AdjectiveColumn(
                    adjective: adjective,
                    form: AdjectiveForm.plural,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class DeclensionColumn extends StatelessWidget {
  const DeclensionColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final declensionCase in Case.values) Text(declensionCase.localized),
      ],
    );
  }
}

class AdjectiveColumn extends StatelessWidget {
  const AdjectiveColumn({
    required this.adjective,
    required this.form,
    Key? key,
  }) : super(key: key);

  final Adjective adjective;
  final AdjectiveForm form;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final f in adjective.form(form)) WordWithStress(f),
        ],
      );
}

enum AdjectiveForm {
  masc,
  fem,
  neu,
  plural,
}

extension AdjectiveExtensions on Adjective {
  List<String> form(AdjectiveForm form) {
    switch (form) {
      case AdjectiveForm.masc:
        return [mNom, mGen, mDat, mAcc, mInst, mPrep];
      case AdjectiveForm.fem:
        return [fNom, fGen, fDat, fAcc, fInst, fPrep];
      case AdjectiveForm.neu:
        return [nNom, nGen, nDat, nAcc, nInst, nPrep];
      case AdjectiveForm.plural:
        return [plNom, plGen, plDat, plAcc, plInst, plPrep];
    }
  }
}
