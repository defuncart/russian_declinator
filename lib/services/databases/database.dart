import 'package:meta/meta.dart';
import 'package:moor/moor.dart';
import 'package:russian_declinator/enums/gender.dart';
import 'package:russian_declinator/services/databases/converters/gender_converter.dart';
import 'package:russian_declinator/services/databases/tables/adjectives.dart';
import 'package:russian_declinator/services/databases/tables/nouns.dart';

import 'models/word.dart';

export 'extensions/noun_extensions.dart';

part 'database.g.dart';

@UseMoor(tables: [Nouns, Adjectives])
class Database extends _$Database {
  /// [createDb] is an optional callback to create the database. Useful for scripts.
  Database(QueryExecutor createDb) : super(createDb);

  @override
  int get schemaVersion => 1;

  Future<List<Noun>> get allNouns => select(nouns).get();

  Future<List<Adjective>> get allAdjectives => select(adjectives).get();

  Future<List<Word>> wordsContaining(String text) async {
    if (text.isEmpty) {
      return Future.value(<Word>[]);
    }

    final nounsResults = await nounsContaining(text);
    final adjectivesResults = await adjectivesContaining(text);

    return <Word>[
      ...nounsResults,
      ...adjectivesResults,
    ];
  }

  @visibleForTesting
  Future<List<Noun>> nounsContaining(String text) => (select(nouns)
        ..where((noun) =>
            noun.translationsEN.contains(text) | noun.translationsDE.contains(text) | noun.bare.contains(text)))
      .get();

  @visibleForTesting
  Future<List<Adjective>> adjectivesContaining(String text) => (select(adjectives)
        ..where((adjective) =>
            adjective.translationsEN.contains(text) |
            adjective.translationsDE.contains(text) |
            adjective.bare.contains(text)))
      .get();
}
