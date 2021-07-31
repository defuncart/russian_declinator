import 'dart:io' show File, Platform;

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:russian_declinator/services/databases/utils/import_from_assets.dart';

QueryExecutor openDatabase() {
  return LazyDatabase(() async {
    final dbFilepath = await _dbFilepath;
    final dbFile = File(dbFilepath);
    if (!dbFile.existsSync()) {
      final bytes = await importDbFromAssets();

      await dbFile.writeAsBytes(bytes);
    }

    return VmDatabase(dbFile);
  });
}

Future<String> get _dbFilepath async {
  String dir;
  if (Platform.isIOS) {
    dir = (await getApplicationSupportDirectory()).path;
  } else {
    dir = (await getApplicationDocumentsDirectory()).path;
  }

  return join(dir, 'db.sqlite');
}
