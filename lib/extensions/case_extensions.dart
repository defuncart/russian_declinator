import 'package:russian_declinator/enums/case.dart';
import 'package:russian_declinator/generated/l10n.dart';

extension CaseExtensions on Case {
  String get localized {
    switch (this) {
      case Case.nominative:
        return AppLocalizations.current.generalNominativeShort;
      case Case.genitive:
        return AppLocalizations.current.generalGenitiveShort;
      case Case.dative:
        return AppLocalizations.current.generalDativeShort;
      case Case.accusative:
        return AppLocalizations.current.generalAccusativeShort;
      case Case.instrumental:
        return AppLocalizations.current.generalInstrumentalShort;
      case Case.prepositional:
        return AppLocalizations.current.generalPrepositionalShort;
    }
  }
}
