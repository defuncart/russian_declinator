import 'package:moor/moor.dart';
import 'package:moor/moor_web.dart';
import 'package:russian_declinator/services/databases/utils/import_from_assets.dart';

QueryExecutor openWebDatabase() {
  return WebDatabase('db', initializer: importDbFromAssets);
}
