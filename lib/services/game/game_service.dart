import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:russian_declinator/di_container.dart';
import 'package:russian_declinator/enums/case.dart';
// ignore: unused_import
import 'package:russian_declinator/extensions/case_extensions.dart';
import 'package:russian_declinator/extensions/noun_extensions.dart';
import 'package:russian_declinator/generated/l10n.dart';

enum GameType {
  noun,
  adjective,
  adjectiveNoun,
}

class GameService {
  GameService({
    required this.type,
    this.numberQuestions = 10,
    this.cases = Case.values,
  });

  final GameType type;
  final int numberQuestions;
  final List<Case> cases;

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

  bool get isGameOver => _currentIndex == numberQuestions - 1;

  // methods

  Future<void> init() async {
    if (type == GameType.noun || type == GameType.adjectiveNoun) {
      _nouns = (await DIContainer.db.allNouns).take(numberQuestions).toList();
    }

    if (type == GameType.adjective || type == GameType.adjectiveNoun) {
      _adjectives = (await DIContainer.db.allAdjectives).take(numberQuestions).toList();
    }

    reset();
    _nextRound();
  }

  void reset() {
    _currentIndex = 0;
    _score = 0;
    _questionIndeces = List.generate(numberQuestions, (index) => index)..shuffle();

    print(_questionIndeces);
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
    if (++_currentIndex < numberQuestions - 1) {
      _nextRound();
    } else {
      // TODO
      print('finished');
    }
  }

  void _nextRound() {
    switch (type) {
      case GameType.noun:
        assert(_nouns != null);
        assert(_nouns?.length == numberQuestions);

        _determineNounRound();
        break;
      case GameType.adjective:
        break;
      case GameType.adjectiveNoun:
        break;
    }
  }

  void _determineNounRound() {
    final noun = _nouns![_questionIndeces[_currentIndex]];
    final isPlural = _random.nextBool();
    _currentQuestion = noun.accented;
    final selectedCase = cases.randomElement;
    final selectedDeclension = Case.values.indexOf(selectedCase) + (isPlural ? Case.values.length : 0);
    _currentInfo = /*selectedCase.localized*/ describeEnum(selectedCase) +
        ' ' +
        (isPlural ? AppLocalizations.current.generalPlural : AppLocalizations.current.generalSingular);
    final declensions = noun.allDeclensions;
    // print(declensions.length);
    print('caseIndex: $selectedDeclension');
    print('---');
    var answerIndeces = determineAnswerIndeces(
      numberPossibleAnswers: declensions.length,
      answerIndex: selectedDeclension,
    );
    _correctAnswerIndex = answerIndeces.indexOf(selectedDeclension);
    _currentAnswers = answerIndeces.map((index) => declensions[index]).toList();
  }

  @visibleForTesting
  List<int> determineAnswerIndeces({
    required int numberPossibleAnswers,
    required int answerIndex,
  }) {
    var answerIndeces = List.generate(numberPossibleAnswers, (index) => index);
    print(answerIndeces);
    answerIndeces = answerIndeces..removeWhere((element) => element == answerIndex);
    print(answerIndeces);
    answerIndeces.shuffle();
    print(answerIndeces);
    answerIndeces = answerIndeces.take(3).toList();
    print(answerIndeces);
    answerIndeces = answerIndeces..add(answerIndex);
    answerIndeces.shuffle();
    print(answerIndeces);
    print('---');

    //TODO deal with case of repeated

    return answerIndeces;
  }
}

extension on List {
  dynamic get randomElement => this[Random().nextInt(length)];
}
