import 'package:russian_declinator/enums/adjective_form.dart';
import 'package:russian_declinator/generated/l10n.dart';

extension AdjectiveFormExtensions on AdjectiveForm {
  String get localized {
    switch (this) {
      case AdjectiveForm.masc:
        return AppLocalizations.current.generalMasculine;
      case AdjectiveForm.fem:
        return AppLocalizations.current.generalFeminine;
      case AdjectiveForm.neu:
        return AppLocalizations.current.generalNeuter;
      case AdjectiveForm.plural:
        return AppLocalizations.current.generalPlural;
    }
  }

  bool get isPlural => this == AdjectiveForm.plural;

  bool get isSingular => this == AdjectiveForm.masc || this == AdjectiveForm.fem || this == AdjectiveForm.neu;
}
