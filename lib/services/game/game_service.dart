import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:russian_declinator/di_container.dart';
import 'package:russian_declinator/enums/adjective_form.dart';
import 'package:russian_declinator/enums/case.dart';
import 'package:russian_declinator/enums/noun_form.dart';
import 'package:russian_declinator/extensions/adjective_extensions.dart';
import 'package:russian_declinator/extensions/adjective_form_extensions.dart';
import 'package:russian_declinator/extensions/case_extensions.dart';
import 'package:russian_declinator/extensions/noun_extensions.dart';
import 'package:russian_declinator/generated/l10n.dart';

enum GameType {
  noun,
  adjective,
  adjectiveNoun,
}

class GameSettings {
  const GameSettings({
    required this.type,
    this.numberQuestions = 10,
    this.cases = Case.values,
  });

  final GameType type;
  final int numberQuestions;
  final List<Case> cases;
}

class GameService {
  GameService({
    required this.settings,
  });

  final GameSettings settings;

  // private variables

  final _random = Random();
  late List<int> _questionIndeces;
  late int _currentIndex;
  late int _correctAnswerIndex;
  List<Adjective>? _adjectives;
  List<Noun>? _nouns;
  late String _currentQuestion;
  late String _currentInfo;
  late List<String> _currentAnswers;
  late int _score;

  // getters

  String get currentQuestion => _currentQuestion;

  String get currentInfo => _currentInfo;

  List<String> get currentAnswers => _currentAnswers;

  int get score => _score;

  bool get isGameOver => _currentIndex == settings.numberQuestions - 1;

  // methods

  Future<void> init() async {
    if (settings.type == GameType.noun || settings.type == GameType.adjectiveNoun) {
      _nouns = (await DIContainer.db.allNouns).take(settings.numberQuestions).toList();
    }

    if (settings.type == GameType.adjective || settings.type == GameType.adjectiveNoun) {
      _adjectives = (await DIContainer.db.allAdjectives).take(settings.numberQuestions).toList();
    }

    reset();
    _nextRound();
  }

  void reset() {
    _currentIndex = 0;
    _score = 0;
    _questionIndeces = List.generate(settings.numberQuestions, (index) => index)..shuffle();
  }

  bool answer(int index) {
    bool isCorrect = index == _correctAnswerIndex;
    if (isCorrect) {
      _score++;
    }

    _determineIfCanProceedToNextRound();

    print('correct: $isCorrect');

    return isCorrect;
  }

  // private methods

  void _determineIfCanProceedToNextRound() {
    if (++_currentIndex < settings.numberQuestions - 1) {
      _nextRound();
    } else {
      // TODO
      print('finished');
    }
  }

  void _nextRound() {
    switch (settings.type) {
      case GameType.noun:
        assert(_nouns != null);
        assert(_nouns?.length == settings.numberQuestions);

        _determineNounRound();
        break;
      case GameType.adjective:
        assert(_adjectives != null);
        assert(_adjectives?.length == settings.numberQuestions);

        _determineAdjectiveRound();
        break;
      case GameType.adjectiveNoun:
        assert(_nouns != null);
        assert(_nouns?.length == settings.numberQuestions);
        assert(_adjectives != null);
        assert(_adjectives?.length == settings.numberQuestions);

        _determineAdjectiveNounRound();
        break;
    }

    print('correctAnswerIndex: $_correctAnswerIndex');
  }

  void _determineNounRound() {
    final noun = _nouns![_questionIndeces[_currentIndex]];

    bool isPlural;
    if (noun.isSingular) {
      isPlural = false;
    } else if (noun.isPlural) {
      isPlural = true;
    } else {
      isPlural = _random.nextBool();
    }

    final Case selectedCase = settings.cases.randomElement;

    final declensions = noun.allDeclensions.toSet().toList();
    final selectedDeclension = noun.declension(
      form: isPlural ? NounForm.plural : NounForm.singular,
      declenionCase: selectedCase,
    );
    final selectedDeclensionIndex = declensions.indexOf(selectedDeclension);

    var answerIndeces = determineAnswerIndeces(
      totalAnswers: 4,
      numberPossibleAnswers: declensions.length,
      answerIndex: selectedDeclensionIndex,
    );
    _correctAnswerIndex = answerIndeces.indexOf(selectedDeclensionIndex);

    _currentQuestion = noun.accented;
    _currentInfo = selectedCase.localized +
        ' ' +
        (isPlural ? AppLocalizations.current.generalPlural : AppLocalizations.current.generalSingular);
    _currentAnswers = answerIndeces.map((index) => declensions[index]).toList();
  }

  void _determineAdjectiveRound() {
    final adjective = _adjectives![_questionIndeces[_currentIndex]];

    final AdjectiveForm adjectiveForm = AdjectiveForm.values.randomElement;
    final Case selectedCase = settings.cases.randomElement;
    final needToConsiderIsAnimate = selectedCase == Case.accusative;
    final isAnimate = needToConsiderIsAnimate ? _random.nextBool() : false;

    final declensions = adjective.allDeclensions.toSet().toList();
    final selectedDeclension = adjective.declension(
      form: adjectiveForm,
      declenionCase: selectedCase,
      isAnimate: isAnimate,
    );
    final selectedDeclensionIndex = declensions.indexOf(selectedDeclension);

    var answerIndeces = determineAnswerIndeces(
      totalAnswers: 4,
      numberPossibleAnswers: declensions.length,
      answerIndex: selectedDeclensionIndex,
    );
    _correctAnswerIndex = answerIndeces.indexOf(selectedDeclensionIndex);

    _currentAnswers = answerIndeces.map((index) => declensions[index]).toList();

    _currentQuestion = adjective.accented;

    final animateText = needToConsiderIsAnimate
        ? isAnimate
            ? AppLocalizations.current.generalAnimate
            : AppLocalizations.current.generalNotAnimate
        : '';
    _currentInfo =
        selectedCase.localized + ' ' + adjectiveForm.localized + (needToConsiderIsAnimate ? ' ' + animateText : '');
  }

  void _determineAdjectiveNounRound() {
    final noun = _nouns![_questionIndeces[_currentIndex]];
    final adjective = _adjectives![_questionIndeces[_currentIndex]];

    // final AdjectiveForm adjectiveForm = AdjectiveForm.values.randomElement;
    AdjectiveForm adjectiveForm;
    do {
      adjectiveForm = AdjectiveForm.values.randomElement;
    } while ((noun.isSingular && adjectiveForm.isPlural) || (noun.isPlural && adjectiveForm.isSingular));
    final Case selectedCase = settings.cases.randomElement;

    final nounDeclensions = noun.allDeclensions.toSet().toList();
    final nounSelectedDeclension = noun.declension(
      form: noun.isPlural ? NounForm.plural : NounForm.singular,
      declenionCase: selectedCase,
    );

    final adjectiveDeclensions = adjective.allDeclensions.toSet().toList();
    final adjectiveSelectedDeclension = adjective.declension(
      form: adjectiveForm,
      declenionCase: selectedCase,
      isAnimate: noun.isAnimate,
    );

    _currentAnswers = [];
    _currentAnswers.add('$adjectiveSelectedDeclension $nounSelectedDeclension');
    nounDeclensions.remove(nounSelectedDeclension);
    adjectiveDeclensions.remove(adjectiveSelectedDeclension);
    for (var i = 0; i < 3; i++) {
      _currentAnswers.add(
        '${adjectiveDeclensions.randomElement} ${nounDeclensions.randomElement}',
      );
    }
    _currentAnswers.shuffle();
    _correctAnswerIndex = _currentAnswers.indexOf('$adjectiveSelectedDeclension $nounSelectedDeclension');

    _currentQuestion = '${adjective.accented} ${noun.accented}';
    _currentInfo = selectedCase.localized + ' ' + adjectiveForm.localized;
  }

  @visibleForTesting
  List<int> determineAnswerIndeces({
    required int totalAnswers,
    required int numberPossibleAnswers,
    required int answerIndex,
  }) {
    var answerIndeces = List.generate(numberPossibleAnswers, (index) => index)
      ..removeWhere((element) => element == answerIndex)
      ..shuffle();
    answerIndeces = answerIndeces.take(totalAnswers - 1).toList()..add(answerIndex);
    answerIndeces.shuffle();

    return answerIndeces;
  }
}

extension on List {
  dynamic get randomElement => this[Random().nextInt(length)];
}
