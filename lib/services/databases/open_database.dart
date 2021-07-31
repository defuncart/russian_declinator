import 'dart:io' show File, Platform;

import 'package:flutter/services.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbFilepath = await _dbFilepath;
    final dbFile = File(dbFilepath);
    if (!dbFile.existsSync()) {
      final blob = await rootBundle.load('assets/db/db.sqlite');
      await dbFile.writeAsBytes(blob.buffer.asUint8List());
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
