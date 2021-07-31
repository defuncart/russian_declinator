import 'package:moor/moor.dart';
import 'package:russian_declinator/enums/gender.dart';
import 'package:russian_declinator/services/databases/converters/gender_converter.dart';
import 'package:russian_declinator/services/databases/tables/adjectives.dart';
import 'package:russian_declinator/services/databases/tables/nouns.dart';

export 'extensions/noun_extensions.dart';

part 'database.g.dart';

@UseMoor(tables: [Nouns, Adjectives])
class Database extends _$Database {
  // we tell the database where to store the data with this constructor
  Database(QueryExecutor createDb) : super(createDb);

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;

  Future<List<Noun>> get allNouns => select(nouns).get();

  Future<List<Adjective>> get allAdjectives => select(adjectives).get();
}
