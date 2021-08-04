import 'dart:async';

import 'package:flutter/material.dart';
import 'package:russian_declinator/services/game/game_service.dart';
import 'package:russian_declinator/widgets/common/word_with_stress.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  var _isLoaded = false;
  final _gameService = GameService(
    type: GameType.noun,
  );

  @override
  void initState() {
    super.initState();

    _init();
  }

  Future<void> _init() async {
    await _gameService.init();
    setState(() => _isLoaded = true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _isLoaded
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      WordWithStress(_gameService.currentQuestion),
                      Text(_gameService.currentInfo),
                    ],
                  ),
                  for (var i = 0; i < _gameService.currentAnswers.length; i++)
                    AnswerButton(
                      text: _gameService.currentAnswers[i],
                      onPressed: () async {
                        _gameService.answer(i);
                        await Future.delayed(const Duration(seconds: 1));

                        if (_gameService.isGameOver) {
                          scheduleMicrotask(() => Navigator.of(context).pop());
                        } else {
                          setState(() {});
                        }
                      },
                    ),
                ],
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.text,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: WordWithStress(
        text,
        stressColor: Colors.red[500],
      ),
    );
  }
}
