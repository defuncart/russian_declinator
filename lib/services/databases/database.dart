import 'package:moor/moor.dart';
import 'package:russian_declinator/enums/gender.dart';
import 'package:russian_declinator/services/databases/converters/gender_converter.dart';
import 'package:russian_declinator/services/databases/tables/nouns.dart';

export 'noun_extensions.dart';

part 'database.g.dart';

@UseMoor(tables: [Nouns])
class MyDatabase extends _$MyDatabase {
  // we tell the database where to store the data with this constructor
  MyDatabase(QueryExecutor createDb) : super(createDb);

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;

  Future<List<Noun>> get allNouns => select(nouns).get();
}
