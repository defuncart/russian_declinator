import 'package:russian_declinator/services/databases/database.dart';

import 'utils/open_database_stub.dart'
    if (dart.library.io) 'utils/open_device_database.dart'
    if (dart.library.js) 'utils/open_web_database.dart';

Database createDatabase() => Database(openDatabase());
