import 'package:flutter/material.dart';
import 'package:russian_declinator/di_container.dart';
import 'package:russian_declinator/generated/l10n.dart';
import 'package:russian_declinator/services/databases/models/word.dart';
import 'package:russian_declinator/services/game/game_service.dart';
import 'package:russian_declinator/widgets/common/adjective_detail.dart';
import 'package:russian_declinator/widgets/common/noun_detail.dart';
import 'package:russian_declinator/widgets/game_screen/game_screen.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text('Search'),
            onPressed: () async {
              await showSearch<Word?>(
                context: context,
                delegate: WordSearchDelegate(
                  hintText: AppLocalizations.of(context).searchWordsHintText,
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Nouns Multiple Choice'),
            onPressed: () => Navigator.of(context).pushNamed(
              GameScreen.routeName,
              arguments: const GameSettings(type: GameType.noun),
            ),
          ),
          ElevatedButton(
            child: const Text('Adjectives Multiple Choice'),
            onPressed: () => Navigator.of(context).pushNamed(
              GameScreen.routeName,
              arguments: const GameSettings(type: GameType.adjective),
            ),
          ),
        ],
      ),
    );
  }
}

class WordSearchDelegate extends SearchDelegate<Word?> {
  WordSearchDelegate({
    required this.hintText,
  });

  final String hintText;

  @override
  List<Widget> buildActions(BuildContext context) => [];

  @override
  String get searchFieldLabel => hintText;

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const BackButtonIcon(),
      onPressed: () => close(context, null),
    );
  }

  late Future<List<Word>> _searchResultsFuture;

  @override
  Widget buildResults(BuildContext context) => SuggestionsList(
        searchResults: _searchResults,
        onSuggestionSelected: (word) => _onSuggestionSelected(
          context: context,
          selectedWord: word,
        ),
      );

  List<Word> _searchResults = [];

  @override
  Widget buildSuggestions(BuildContext context) {
    _searchResultsFuture = DIContainer.db.wordsContaining(query.trim().toLowerCase());

    return FutureBuilder(
      future: _searchResultsFuture,
      builder: (_, AsyncSnapshot<List<Word>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          _searchResults = snapshot.data!;

          return SuggestionsList(
            searchResults: _searchResults,
            onSuggestionSelected: (word) => _onSuggestionSelected(
              context: context,
              selectedWord: word,
            ),
          );
        }

        return Container();
      },
    );
  }

  void _onSuggestionSelected({
    required BuildContext context,
    required Word selectedWord,
  }) {
    showResults(context);
    if (selectedWord is Adjective) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(),
          body: AdjectiveDetail(adjective: selectedWord),
        ),
      ));
    } else if (selectedWord is Noun) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(),
          body: NounDetail(noun: selectedWord),
        ),
      ));
    }
  }
}

class SuggestionsList extends StatelessWidget {
  const SuggestionsList({
    required this.searchResults,
    required this.onSuggestionSelected,
    Key? key,
  }) : super(key: key);

  final List<Word> searchResults;
  final void Function(Word) onSuggestionSelected;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (_, index) {
        final word = searchResults[index];
        String title = '';
        if (word is Adjective) {
          title = word.bare;
        } else if (word is Noun) {
          title = word.bare;
        }

        return ListTile(
          title: Text(title),
          onTap: () => onSuggestionSelected(word),
        );
      },
    );
  }
}
