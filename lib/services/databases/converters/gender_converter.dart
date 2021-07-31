import 'package:moor/moor.dart';
import 'package:russian_declinator/enums/gender.dart';

class GenderConverter extends TypeConverter<Gender, int> {
  const GenderConverter();

  @override
  Gender? mapToDart(int? fromDb) => fromDb != null ? Gender.values[fromDb] : null;

  @override
  int? mapToSql(Gender? value) => value?.index;
}
