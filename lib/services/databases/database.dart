import 'package:moor/moor.dart';
import 'package:russian_declinator/enums/gender.dart';
import 'package:russian_declinator/services/databases/converters/gender_converter.dart';
import 'package:russian_declinator/services/databases/tables/adjectives.dart';
import 'package:russian_declinator/services/databases/tables/nouns.dart';

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
}
