// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Noun extends DataClass implements Insertable<Noun> {
  final int id;
  final String bare;
  final String accented;
  final Gender? gender;
  final bool isAnimate;
  final bool isIndeclinable;
  final bool isSingular;
  final bool isPlural;
  final String sgNom;
  final String sgGen;
  final String sgDat;
  final String sgAcc;
  final String sgInst;
  final String sgPrep;
  final String plNom;
  final String plGen;
  final String plDat;
  final String plAcc;
  final String plInst;
  final String plPrep;
  Noun(
      {required this.id,
      required this.bare,
      required this.accented,
      this.gender,
      required this.isAnimate,
      required this.isIndeclinable,
      required this.isSingular,
      required this.isPlural,
      required this.sgNom,
      required this.sgGen,
      required this.sgDat,
      required this.sgAcc,
      required this.sgInst,
      required this.sgPrep,
      required this.plNom,
      required this.plGen,
      required this.plDat,
      required this.plAcc,
      required this.plInst,
      required this.plPrep});
  factory Noun.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Noun(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      bare: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bare'])!,
      accented: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}accented'])!,
      gender: $NounsTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gender'])),
      isAnimate: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_animate'])!,
      isIndeclinable: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_indeclinable'])!,
      isSingular: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_singular'])!,
      isPlural: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_plural'])!,
      sgNom: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sg_nom'])!,
      sgGen: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sg_gen'])!,
      sgDat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sg_dat'])!,
      sgAcc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sg_acc'])!,
      sgInst: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sg_inst'])!,
      sgPrep: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sg_prep'])!,
      plNom: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_nom'])!,
      plGen: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_gen'])!,
      plDat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_dat'])!,
      plAcc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_acc'])!,
      plInst: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_inst'])!,
      plPrep: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_prep'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['bare'] = Variable<String>(bare);
    map['accented'] = Variable<String>(accented);
    if (!nullToAbsent || gender != null) {
      final converter = $NounsTable.$converter0;
      map['gender'] = Variable<int?>(converter.mapToSql(gender));
    }
    map['is_animate'] = Variable<bool>(isAnimate);
    map['is_indeclinable'] = Variable<bool>(isIndeclinable);
    map['is_singular'] = Variable<bool>(isSingular);
    map['is_plural'] = Variable<bool>(isPlural);
    map['sg_nom'] = Variable<String>(sgNom);
    map['sg_gen'] = Variable<String>(sgGen);
    map['sg_dat'] = Variable<String>(sgDat);
    map['sg_acc'] = Variable<String>(sgAcc);
    map['sg_inst'] = Variable<String>(sgInst);
    map['sg_prep'] = Variable<String>(sgPrep);
    map['pl_nom'] = Variable<String>(plNom);
    map['pl_gen'] = Variable<String>(plGen);
    map['pl_dat'] = Variable<String>(plDat);
    map['pl_acc'] = Variable<String>(plAcc);
    map['pl_inst'] = Variable<String>(plInst);
    map['pl_prep'] = Variable<String>(plPrep);
    return map;
  }

  NounsCompanion toCompanion(bool nullToAbsent) {
    return NounsCompanion(
      id: Value(id),
      bare: Value(bare),
      accented: Value(accented),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      isAnimate: Value(isAnimate),
      isIndeclinable: Value(isIndeclinable),
      isSingular: Value(isSingular),
      isPlural: Value(isPlural),
      sgNom: Value(sgNom),
      sgGen: Value(sgGen),
      sgDat: Value(sgDat),
      sgAcc: Value(sgAcc),
      sgInst: Value(sgInst),
      sgPrep: Value(sgPrep),
      plNom: Value(plNom),
      plGen: Value(plGen),
      plDat: Value(plDat),
      plAcc: Value(plAcc),
      plInst: Value(plInst),
      plPrep: Value(plPrep),
    );
  }

  factory Noun.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Noun(
      id: serializer.fromJson<int>(json['id']),
      bare: serializer.fromJson<String>(json['bare']),
      accented: serializer.fromJson<String>(json['accented']),
      gender: serializer.fromJson<Gender?>(json['gender']),
      isAnimate: serializer.fromJson<bool>(json['isAnimate']),
      isIndeclinable: serializer.fromJson<bool>(json['isIndeclinable']),
      isSingular: serializer.fromJson<bool>(json['isSingular']),
      isPlural: serializer.fromJson<bool>(json['isPlural']),
      sgNom: serializer.fromJson<String>(json['sgNom']),
      sgGen: serializer.fromJson<String>(json['sgGen']),
      sgDat: serializer.fromJson<String>(json['sgDat']),
      sgAcc: serializer.fromJson<String>(json['sgAcc']),
      sgInst: serializer.fromJson<String>(json['sgInst']),
      sgPrep: serializer.fromJson<String>(json['sgPrep']),
      plNom: serializer.fromJson<String>(json['plNom']),
      plGen: serializer.fromJson<String>(json['plGen']),
      plDat: serializer.fromJson<String>(json['plDat']),
      plAcc: serializer.fromJson<String>(json['plAcc']),
      plInst: serializer.fromJson<String>(json['plInst']),
      plPrep: serializer.fromJson<String>(json['plPrep']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bare': serializer.toJson<String>(bare),
      'accented': serializer.toJson<String>(accented),
      'gender': serializer.toJson<Gender?>(gender),
      'isAnimate': serializer.toJson<bool>(isAnimate),
      'isIndeclinable': serializer.toJson<bool>(isIndeclinable),
      'isSingular': serializer.toJson<bool>(isSingular),
      'isPlural': serializer.toJson<bool>(isPlural),
      'sgNom': serializer.toJson<String>(sgNom),
      'sgGen': serializer.toJson<String>(sgGen),
      'sgDat': serializer.toJson<String>(sgDat),
      'sgAcc': serializer.toJson<String>(sgAcc),
      'sgInst': serializer.toJson<String>(sgInst),
      'sgPrep': serializer.toJson<String>(sgPrep),
      'plNom': serializer.toJson<String>(plNom),
      'plGen': serializer.toJson<String>(plGen),
      'plDat': serializer.toJson<String>(plDat),
      'plAcc': serializer.toJson<String>(plAcc),
      'plInst': serializer.toJson<String>(plInst),
      'plPrep': serializer.toJson<String>(plPrep),
    };
  }

  Noun copyWith(
          {int? id,
          String? bare,
          String? accented,
          Gender? gender,
          bool? isAnimate,
          bool? isIndeclinable,
          bool? isSingular,
          bool? isPlural,
          String? sgNom,
          String? sgGen,
          String? sgDat,
          String? sgAcc,
          String? sgInst,
          String? sgPrep,
          String? plNom,
          String? plGen,
          String? plDat,
          String? plAcc,
          String? plInst,
          String? plPrep}) =>
      Noun(
        id: id ?? this.id,
        bare: bare ?? this.bare,
        accented: accented ?? this.accented,
        gender: gender ?? this.gender,
        isAnimate: isAnimate ?? this.isAnimate,
        isIndeclinable: isIndeclinable ?? this.isIndeclinable,
        isSingular: isSingular ?? this.isSingular,
        isPlural: isPlural ?? this.isPlural,
        sgNom: sgNom ?? this.sgNom,
        sgGen: sgGen ?? this.sgGen,
        sgDat: sgDat ?? this.sgDat,
        sgAcc: sgAcc ?? this.sgAcc,
        sgInst: sgInst ?? this.sgInst,
        sgPrep: sgPrep ?? this.sgPrep,
        plNom: plNom ?? this.plNom,
        plGen: plGen ?? this.plGen,
        plDat: plDat ?? this.plDat,
        plAcc: plAcc ?? this.plAcc,
        plInst: plInst ?? this.plInst,
        plPrep: plPrep ?? this.plPrep,
      );
  @override
  String toString() {
    return (StringBuffer('Noun(')
          ..write('id: $id, ')
          ..write('bare: $bare, ')
          ..write('accented: $accented, ')
          ..write('gender: $gender, ')
          ..write('isAnimate: $isAnimate, ')
          ..write('isIndeclinable: $isIndeclinable, ')
          ..write('isSingular: $isSingular, ')
          ..write('isPlural: $isPlural, ')
          ..write('sgNom: $sgNom, ')
          ..write('sgGen: $sgGen, ')
          ..write('sgDat: $sgDat, ')
          ..write('sgAcc: $sgAcc, ')
          ..write('sgInst: $sgInst, ')
          ..write('sgPrep: $sgPrep, ')
          ..write('plNom: $plNom, ')
          ..write('plGen: $plGen, ')
          ..write('plDat: $plDat, ')
          ..write('plAcc: $plAcc, ')
          ..write('plInst: $plInst, ')
          ..write('plPrep: $plPrep')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bare.hashCode,
          $mrjc(
              accented.hashCode,
              $mrjc(
                  gender.hashCode,
                  $mrjc(
                      isAnimate.hashCode,
                      $mrjc(
                          isIndeclinable.hashCode,
                          $mrjc(
                              isSingular.hashCode,
                              $mrjc(
                                  isPlural.hashCode,
                                  $mrjc(
                                      sgNom.hashCode,
                                      $mrjc(
                                          sgGen.hashCode,
                                          $mrjc(
                                              sgDat.hashCode,
                                              $mrjc(
                                                  sgAcc.hashCode,
                                                  $mrjc(
                                                      sgInst.hashCode,
                                                      $mrjc(
                                                          sgPrep.hashCode,
                                                          $mrjc(
                                                              plNom.hashCode,
                                                              $mrjc(
                                                                  plGen
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      plDat
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          plAcc
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              plInst.hashCode,
                                                                              plPrep.hashCode))))))))))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Noun &&
          other.id == this.id &&
          other.bare == this.bare &&
          other.accented == this.accented &&
          other.gender == this.gender &&
          other.isAnimate == this.isAnimate &&
          other.isIndeclinable == this.isIndeclinable &&
          other.isSingular == this.isSingular &&
          other.isPlural == this.isPlural &&
          other.sgNom == this.sgNom &&
          other.sgGen == this.sgGen &&
          other.sgDat == this.sgDat &&
          other.sgAcc == this.sgAcc &&
          other.sgInst == this.sgInst &&
          other.sgPrep == this.sgPrep &&
          other.plNom == this.plNom &&
          other.plGen == this.plGen &&
          other.plDat == this.plDat &&
          other.plAcc == this.plAcc &&
          other.plInst == this.plInst &&
          other.plPrep == this.plPrep);
}

class NounsCompanion extends UpdateCompanion<Noun> {
  final Value<int> id;
  final Value<String> bare;
  final Value<String> accented;
  final Value<Gender?> gender;
  final Value<bool> isAnimate;
  final Value<bool> isIndeclinable;
  final Value<bool> isSingular;
  final Value<bool> isPlural;
  final Value<String> sgNom;
  final Value<String> sgGen;
  final Value<String> sgDat;
  final Value<String> sgAcc;
  final Value<String> sgInst;
  final Value<String> sgPrep;
  final Value<String> plNom;
  final Value<String> plGen;
  final Value<String> plDat;
  final Value<String> plAcc;
  final Value<String> plInst;
  final Value<String> plPrep;
  const NounsCompanion({
    this.id = const Value.absent(),
    this.bare = const Value.absent(),
    this.accented = const Value.absent(),
    this.gender = const Value.absent(),
    this.isAnimate = const Value.absent(),
    this.isIndeclinable = const Value.absent(),
    this.isSingular = const Value.absent(),
    this.isPlural = const Value.absent(),
    this.sgNom = const Value.absent(),
    this.sgGen = const Value.absent(),
    this.sgDat = const Value.absent(),
    this.sgAcc = const Value.absent(),
    this.sgInst = const Value.absent(),
    this.sgPrep = const Value.absent(),
    this.plNom = const Value.absent(),
    this.plGen = const Value.absent(),
    this.plDat = const Value.absent(),
    this.plAcc = const Value.absent(),
    this.plInst = const Value.absent(),
    this.plPrep = const Value.absent(),
  });
  NounsCompanion.insert({
    this.id = const Value.absent(),
    required String bare,
    required String accented,
    this.gender = const Value.absent(),
    required bool isAnimate,
    required bool isIndeclinable,
    required bool isSingular,
    required bool isPlural,
    required String sgNom,
    required String sgGen,
    required String sgDat,
    required String sgAcc,
    required String sgInst,
    required String sgPrep,
    required String plNom,
    required String plGen,
    required String plDat,
    required String plAcc,
    required String plInst,
    required String plPrep,
  })  : bare = Value(bare),
        accented = Value(accented),
        isAnimate = Value(isAnimate),
        isIndeclinable = Value(isIndeclinable),
        isSingular = Value(isSingular),
        isPlural = Value(isPlural),
        sgNom = Value(sgNom),
        sgGen = Value(sgGen),
        sgDat = Value(sgDat),
        sgAcc = Value(sgAcc),
        sgInst = Value(sgInst),
        sgPrep = Value(sgPrep),
        plNom = Value(plNom),
        plGen = Value(plGen),
        plDat = Value(plDat),
        plAcc = Value(plAcc),
        plInst = Value(plInst),
        plPrep = Value(plPrep);
  static Insertable<Noun> custom({
    Expression<int>? id,
    Expression<String>? bare,
    Expression<String>? accented,
    Expression<Gender?>? gender,
    Expression<bool>? isAnimate,
    Expression<bool>? isIndeclinable,
    Expression<bool>? isSingular,
    Expression<bool>? isPlural,
    Expression<String>? sgNom,
    Expression<String>? sgGen,
    Expression<String>? sgDat,
    Expression<String>? sgAcc,
    Expression<String>? sgInst,
    Expression<String>? sgPrep,
    Expression<String>? plNom,
    Expression<String>? plGen,
    Expression<String>? plDat,
    Expression<String>? plAcc,
    Expression<String>? plInst,
    Expression<String>? plPrep,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bare != null) 'bare': bare,
      if (accented != null) 'accented': accented,
      if (gender != null) 'gender': gender,
      if (isAnimate != null) 'is_animate': isAnimate,
      if (isIndeclinable != null) 'is_indeclinable': isIndeclinable,
      if (isSingular != null) 'is_singular': isSingular,
      if (isPlural != null) 'is_plural': isPlural,
      if (sgNom != null) 'sg_nom': sgNom,
      if (sgGen != null) 'sg_gen': sgGen,
      if (sgDat != null) 'sg_dat': sgDat,
      if (sgAcc != null) 'sg_acc': sgAcc,
      if (sgInst != null) 'sg_inst': sgInst,
      if (sgPrep != null) 'sg_prep': sgPrep,
      if (plNom != null) 'pl_nom': plNom,
      if (plGen != null) 'pl_gen': plGen,
      if (plDat != null) 'pl_dat': plDat,
      if (plAcc != null) 'pl_acc': plAcc,
      if (plInst != null) 'pl_inst': plInst,
      if (plPrep != null) 'pl_prep': plPrep,
    });
  }

  NounsCompanion copyWith(
      {Value<int>? id,
      Value<String>? bare,
      Value<String>? accented,
      Value<Gender?>? gender,
      Value<bool>? isAnimate,
      Value<bool>? isIndeclinable,
      Value<bool>? isSingular,
      Value<bool>? isPlural,
      Value<String>? sgNom,
      Value<String>? sgGen,
      Value<String>? sgDat,
      Value<String>? sgAcc,
      Value<String>? sgInst,
      Value<String>? sgPrep,
      Value<String>? plNom,
      Value<String>? plGen,
      Value<String>? plDat,
      Value<String>? plAcc,
      Value<String>? plInst,
      Value<String>? plPrep}) {
    return NounsCompanion(
      id: id ?? this.id,
      bare: bare ?? this.bare,
      accented: accented ?? this.accented,
      gender: gender ?? this.gender,
      isAnimate: isAnimate ?? this.isAnimate,
      isIndeclinable: isIndeclinable ?? this.isIndeclinable,
      isSingular: isSingular ?? this.isSingular,
      isPlural: isPlural ?? this.isPlural,
      sgNom: sgNom ?? this.sgNom,
      sgGen: sgGen ?? this.sgGen,
      sgDat: sgDat ?? this.sgDat,
      sgAcc: sgAcc ?? this.sgAcc,
      sgInst: sgInst ?? this.sgInst,
      sgPrep: sgPrep ?? this.sgPrep,
      plNom: plNom ?? this.plNom,
      plGen: plGen ?? this.plGen,
      plDat: plDat ?? this.plDat,
      plAcc: plAcc ?? this.plAcc,
      plInst: plInst ?? this.plInst,
      plPrep: plPrep ?? this.plPrep,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bare.present) {
      map['bare'] = Variable<String>(bare.value);
    }
    if (accented.present) {
      map['accented'] = Variable<String>(accented.value);
    }
    if (gender.present) {
      final converter = $NounsTable.$converter0;
      map['gender'] = Variable<int?>(converter.mapToSql(gender.value));
    }
    if (isAnimate.present) {
      map['is_animate'] = Variable<bool>(isAnimate.value);
    }
    if (isIndeclinable.present) {
      map['is_indeclinable'] = Variable<bool>(isIndeclinable.value);
    }
    if (isSingular.present) {
      map['is_singular'] = Variable<bool>(isSingular.value);
    }
    if (isPlural.present) {
      map['is_plural'] = Variable<bool>(isPlural.value);
    }
    if (sgNom.present) {
      map['sg_nom'] = Variable<String>(sgNom.value);
    }
    if (sgGen.present) {
      map['sg_gen'] = Variable<String>(sgGen.value);
    }
    if (sgDat.present) {
      map['sg_dat'] = Variable<String>(sgDat.value);
    }
    if (sgAcc.present) {
      map['sg_acc'] = Variable<String>(sgAcc.value);
    }
    if (sgInst.present) {
      map['sg_inst'] = Variable<String>(sgInst.value);
    }
    if (sgPrep.present) {
      map['sg_prep'] = Variable<String>(sgPrep.value);
    }
    if (plNom.present) {
      map['pl_nom'] = Variable<String>(plNom.value);
    }
    if (plGen.present) {
      map['pl_gen'] = Variable<String>(plGen.value);
    }
    if (plDat.present) {
      map['pl_dat'] = Variable<String>(plDat.value);
    }
    if (plAcc.present) {
      map['pl_acc'] = Variable<String>(plAcc.value);
    }
    if (plInst.present) {
      map['pl_inst'] = Variable<String>(plInst.value);
    }
    if (plPrep.present) {
      map['pl_prep'] = Variable<String>(plPrep.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NounsCompanion(')
          ..write('id: $id, ')
          ..write('bare: $bare, ')
          ..write('accented: $accented, ')
          ..write('gender: $gender, ')
          ..write('isAnimate: $isAnimate, ')
          ..write('isIndeclinable: $isIndeclinable, ')
          ..write('isSingular: $isSingular, ')
          ..write('isPlural: $isPlural, ')
          ..write('sgNom: $sgNom, ')
          ..write('sgGen: $sgGen, ')
          ..write('sgDat: $sgDat, ')
          ..write('sgAcc: $sgAcc, ')
          ..write('sgInst: $sgInst, ')
          ..write('sgPrep: $sgPrep, ')
          ..write('plNom: $plNom, ')
          ..write('plGen: $plGen, ')
          ..write('plDat: $plDat, ')
          ..write('plAcc: $plAcc, ')
          ..write('plInst: $plInst, ')
          ..write('plPrep: $plPrep')
          ..write(')'))
        .toString();
  }
}

class $NounsTable extends Nouns with TableInfo<$NounsTable, Noun> {
  final GeneratedDatabase _db;
  final String? _alias;
  $NounsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _bareMeta = const VerificationMeta('bare');
  late final GeneratedColumn<String?> bare = GeneratedColumn<String?>(
      'bare', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _accentedMeta = const VerificationMeta('accented');
  late final GeneratedColumn<String?> accented = GeneratedColumn<String?>(
      'accented', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  late final GeneratedColumnWithTypeConverter<Gender, int?> gender =
      GeneratedColumn<int?>('gender', aliasedName, true,
              typeName: 'INTEGER', requiredDuringInsert: false)
          .withConverter<Gender>($NounsTable.$converter0);
  final VerificationMeta _isAnimateMeta = const VerificationMeta('isAnimate');
  late final GeneratedColumn<bool?> isAnimate = GeneratedColumn<bool?>(
      'is_animate', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_animate IN (0, 1))');
  final VerificationMeta _isIndeclinableMeta =
      const VerificationMeta('isIndeclinable');
  late final GeneratedColumn<bool?> isIndeclinable = GeneratedColumn<bool?>(
      'is_indeclinable', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_indeclinable IN (0, 1))');
  final VerificationMeta _isSingularMeta = const VerificationMeta('isSingular');
  late final GeneratedColumn<bool?> isSingular = GeneratedColumn<bool?>(
      'is_singular', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_singular IN (0, 1))');
  final VerificationMeta _isPluralMeta = const VerificationMeta('isPlural');
  late final GeneratedColumn<bool?> isPlural = GeneratedColumn<bool?>(
      'is_plural', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_plural IN (0, 1))');
  final VerificationMeta _sgNomMeta = const VerificationMeta('sgNom');
  late final GeneratedColumn<String?> sgNom = GeneratedColumn<String?>(
      'sg_nom', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _sgGenMeta = const VerificationMeta('sgGen');
  late final GeneratedColumn<String?> sgGen = GeneratedColumn<String?>(
      'sg_gen', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _sgDatMeta = const VerificationMeta('sgDat');
  late final GeneratedColumn<String?> sgDat = GeneratedColumn<String?>(
      'sg_dat', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _sgAccMeta = const VerificationMeta('sgAcc');
  late final GeneratedColumn<String?> sgAcc = GeneratedColumn<String?>(
      'sg_acc', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _sgInstMeta = const VerificationMeta('sgInst');
  late final GeneratedColumn<String?> sgInst = GeneratedColumn<String?>(
      'sg_inst', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _sgPrepMeta = const VerificationMeta('sgPrep');
  late final GeneratedColumn<String?> sgPrep = GeneratedColumn<String?>(
      'sg_prep', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plNomMeta = const VerificationMeta('plNom');
  late final GeneratedColumn<String?> plNom = GeneratedColumn<String?>(
      'pl_nom', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plGenMeta = const VerificationMeta('plGen');
  late final GeneratedColumn<String?> plGen = GeneratedColumn<String?>(
      'pl_gen', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plDatMeta = const VerificationMeta('plDat');
  late final GeneratedColumn<String?> plDat = GeneratedColumn<String?>(
      'pl_dat', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plAccMeta = const VerificationMeta('plAcc');
  late final GeneratedColumn<String?> plAcc = GeneratedColumn<String?>(
      'pl_acc', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plInstMeta = const VerificationMeta('plInst');
  late final GeneratedColumn<String?> plInst = GeneratedColumn<String?>(
      'pl_inst', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plPrepMeta = const VerificationMeta('plPrep');
  late final GeneratedColumn<String?> plPrep = GeneratedColumn<String?>(
      'pl_prep', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bare,
        accented,
        gender,
        isAnimate,
        isIndeclinable,
        isSingular,
        isPlural,
        sgNom,
        sgGen,
        sgDat,
        sgAcc,
        sgInst,
        sgPrep,
        plNom,
        plGen,
        plDat,
        plAcc,
        plInst,
        plPrep
      ];
  @override
  String get aliasedName => _alias ?? 'nouns';
  @override
  String get actualTableName => 'nouns';
  @override
  VerificationContext validateIntegrity(Insertable<Noun> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('bare')) {
      context.handle(
          _bareMeta, bare.isAcceptableOrUnknown(data['bare']!, _bareMeta));
    } else if (isInserting) {
      context.missing(_bareMeta);
    }
    if (data.containsKey('accented')) {
      context.handle(_accentedMeta,
          accented.isAcceptableOrUnknown(data['accented']!, _accentedMeta));
    } else if (isInserting) {
      context.missing(_accentedMeta);
    }
    context.handle(_genderMeta, const VerificationResult.success());
    if (data.containsKey('is_animate')) {
      context.handle(_isAnimateMeta,
          isAnimate.isAcceptableOrUnknown(data['is_animate']!, _isAnimateMeta));
    } else if (isInserting) {
      context.missing(_isAnimateMeta);
    }
    if (data.containsKey('is_indeclinable')) {
      context.handle(
          _isIndeclinableMeta,
          isIndeclinable.isAcceptableOrUnknown(
              data['is_indeclinable']!, _isIndeclinableMeta));
    } else if (isInserting) {
      context.missing(_isIndeclinableMeta);
    }
    if (data.containsKey('is_singular')) {
      context.handle(
          _isSingularMeta,
          isSingular.isAcceptableOrUnknown(
              data['is_singular']!, _isSingularMeta));
    } else if (isInserting) {
      context.missing(_isSingularMeta);
    }
    if (data.containsKey('is_plural')) {
      context.handle(_isPluralMeta,
          isPlural.isAcceptableOrUnknown(data['is_plural']!, _isPluralMeta));
    } else if (isInserting) {
      context.missing(_isPluralMeta);
    }
    if (data.containsKey('sg_nom')) {
      context.handle(
          _sgNomMeta, sgNom.isAcceptableOrUnknown(data['sg_nom']!, _sgNomMeta));
    } else if (isInserting) {
      context.missing(_sgNomMeta);
    }
    if (data.containsKey('sg_gen')) {
      context.handle(
          _sgGenMeta, sgGen.isAcceptableOrUnknown(data['sg_gen']!, _sgGenMeta));
    } else if (isInserting) {
      context.missing(_sgGenMeta);
    }
    if (data.containsKey('sg_dat')) {
      context.handle(
          _sgDatMeta, sgDat.isAcceptableOrUnknown(data['sg_dat']!, _sgDatMeta));
    } else if (isInserting) {
      context.missing(_sgDatMeta);
    }
    if (data.containsKey('sg_acc')) {
      context.handle(
          _sgAccMeta, sgAcc.isAcceptableOrUnknown(data['sg_acc']!, _sgAccMeta));
    } else if (isInserting) {
      context.missing(_sgAccMeta);
    }
    if (data.containsKey('sg_inst')) {
      context.handle(_sgInstMeta,
          sgInst.isAcceptableOrUnknown(data['sg_inst']!, _sgInstMeta));
    } else if (isInserting) {
      context.missing(_sgInstMeta);
    }
    if (data.containsKey('sg_prep')) {
      context.handle(_sgPrepMeta,
          sgPrep.isAcceptableOrUnknown(data['sg_prep']!, _sgPrepMeta));
    } else if (isInserting) {
      context.missing(_sgPrepMeta);
    }
    if (data.containsKey('pl_nom')) {
      context.handle(
          _plNomMeta, plNom.isAcceptableOrUnknown(data['pl_nom']!, _plNomMeta));
    } else if (isInserting) {
      context.missing(_plNomMeta);
    }
    if (data.containsKey('pl_gen')) {
      context.handle(
          _plGenMeta, plGen.isAcceptableOrUnknown(data['pl_gen']!, _plGenMeta));
    } else if (isInserting) {
      context.missing(_plGenMeta);
    }
    if (data.containsKey('pl_dat')) {
      context.handle(
          _plDatMeta, plDat.isAcceptableOrUnknown(data['pl_dat']!, _plDatMeta));
    } else if (isInserting) {
      context.missing(_plDatMeta);
    }
    if (data.containsKey('pl_acc')) {
      context.handle(
          _plAccMeta, plAcc.isAcceptableOrUnknown(data['pl_acc']!, _plAccMeta));
    } else if (isInserting) {
      context.missing(_plAccMeta);
    }
    if (data.containsKey('pl_inst')) {
      context.handle(_plInstMeta,
          plInst.isAcceptableOrUnknown(data['pl_inst']!, _plInstMeta));
    } else if (isInserting) {
      context.missing(_plInstMeta);
    }
    if (data.containsKey('pl_prep')) {
      context.handle(_plPrepMeta,
          plPrep.isAcceptableOrUnknown(data['pl_prep']!, _plPrepMeta));
    } else if (isInserting) {
      context.missing(_plPrepMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Noun map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Noun.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $NounsTable createAlias(String alias) {
    return $NounsTable(_db, alias);
  }

  static TypeConverter<Gender, int> $converter0 = const GenderConverter();
}

class Adjective extends DataClass implements Insertable<Adjective> {
  final int id;
  final String bare;
  final String accented;
  final String mNom;
  final String mGen;
  final String mDat;
  final String mAcc;
  final String mInst;
  final String mPrep;
  final String fNom;
  final String fGen;
  final String fDat;
  final String fAcc;
  final String fInst;
  final String fPrep;
  final String nNom;
  final String nGen;
  final String nDat;
  final String nAcc;
  final String nInst;
  final String nPrep;
  final String plNom;
  final String plGen;
  final String plDat;
  final String plAcc;
  final String plInst;
  final String plPrep;
  Adjective(
      {required this.id,
      required this.bare,
      required this.accented,
      required this.mNom,
      required this.mGen,
      required this.mDat,
      required this.mAcc,
      required this.mInst,
      required this.mPrep,
      required this.fNom,
      required this.fGen,
      required this.fDat,
      required this.fAcc,
      required this.fInst,
      required this.fPrep,
      required this.nNom,
      required this.nGen,
      required this.nDat,
      required this.nAcc,
      required this.nInst,
      required this.nPrep,
      required this.plNom,
      required this.plGen,
      required this.plDat,
      required this.plAcc,
      required this.plInst,
      required this.plPrep});
  factory Adjective.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Adjective(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      bare: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bare'])!,
      accented: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}accented'])!,
      mNom: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}m_nom'])!,
      mGen: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}m_gen'])!,
      mDat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}m_dat'])!,
      mAcc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}m_acc'])!,
      mInst: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}m_inst'])!,
      mPrep: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}m_prep'])!,
      fNom: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}f_nom'])!,
      fGen: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}f_gen'])!,
      fDat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}f_dat'])!,
      fAcc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}f_acc'])!,
      fInst: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}f_inst'])!,
      fPrep: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}f_prep'])!,
      nNom: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}n_nom'])!,
      nGen: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}n_gen'])!,
      nDat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}n_dat'])!,
      nAcc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}n_acc'])!,
      nInst: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}n_inst'])!,
      nPrep: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}n_prep'])!,
      plNom: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_nom'])!,
      plGen: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_gen'])!,
      plDat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_dat'])!,
      plAcc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_acc'])!,
      plInst: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_inst'])!,
      plPrep: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pl_prep'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['bare'] = Variable<String>(bare);
    map['accented'] = Variable<String>(accented);
    map['m_nom'] = Variable<String>(mNom);
    map['m_gen'] = Variable<String>(mGen);
    map['m_dat'] = Variable<String>(mDat);
    map['m_acc'] = Variable<String>(mAcc);
    map['m_inst'] = Variable<String>(mInst);
    map['m_prep'] = Variable<String>(mPrep);
    map['f_nom'] = Variable<String>(fNom);
    map['f_gen'] = Variable<String>(fGen);
    map['f_dat'] = Variable<String>(fDat);
    map['f_acc'] = Variable<String>(fAcc);
    map['f_inst'] = Variable<String>(fInst);
    map['f_prep'] = Variable<String>(fPrep);
    map['n_nom'] = Variable<String>(nNom);
    map['n_gen'] = Variable<String>(nGen);
    map['n_dat'] = Variable<String>(nDat);
    map['n_acc'] = Variable<String>(nAcc);
    map['n_inst'] = Variable<String>(nInst);
    map['n_prep'] = Variable<String>(nPrep);
    map['pl_nom'] = Variable<String>(plNom);
    map['pl_gen'] = Variable<String>(plGen);
    map['pl_dat'] = Variable<String>(plDat);
    map['pl_acc'] = Variable<String>(plAcc);
    map['pl_inst'] = Variable<String>(plInst);
    map['pl_prep'] = Variable<String>(plPrep);
    return map;
  }

  AdjectivesCompanion toCompanion(bool nullToAbsent) {
    return AdjectivesCompanion(
      id: Value(id),
      bare: Value(bare),
      accented: Value(accented),
      mNom: Value(mNom),
      mGen: Value(mGen),
      mDat: Value(mDat),
      mAcc: Value(mAcc),
      mInst: Value(mInst),
      mPrep: Value(mPrep),
      fNom: Value(fNom),
      fGen: Value(fGen),
      fDat: Value(fDat),
      fAcc: Value(fAcc),
      fInst: Value(fInst),
      fPrep: Value(fPrep),
      nNom: Value(nNom),
      nGen: Value(nGen),
      nDat: Value(nDat),
      nAcc: Value(nAcc),
      nInst: Value(nInst),
      nPrep: Value(nPrep),
      plNom: Value(plNom),
      plGen: Value(plGen),
      plDat: Value(plDat),
      plAcc: Value(plAcc),
      plInst: Value(plInst),
      plPrep: Value(plPrep),
    );
  }

  factory Adjective.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Adjective(
      id: serializer.fromJson<int>(json['id']),
      bare: serializer.fromJson<String>(json['bare']),
      accented: serializer.fromJson<String>(json['accented']),
      mNom: serializer.fromJson<String>(json['mNom']),
      mGen: serializer.fromJson<String>(json['mGen']),
      mDat: serializer.fromJson<String>(json['mDat']),
      mAcc: serializer.fromJson<String>(json['mAcc']),
      mInst: serializer.fromJson<String>(json['mInst']),
      mPrep: serializer.fromJson<String>(json['mPrep']),
      fNom: serializer.fromJson<String>(json['fNom']),
      fGen: serializer.fromJson<String>(json['fGen']),
      fDat: serializer.fromJson<String>(json['fDat']),
      fAcc: serializer.fromJson<String>(json['fAcc']),
      fInst: serializer.fromJson<String>(json['fInst']),
      fPrep: serializer.fromJson<String>(json['fPrep']),
      nNom: serializer.fromJson<String>(json['nNom']),
      nGen: serializer.fromJson<String>(json['nGen']),
      nDat: serializer.fromJson<String>(json['nDat']),
      nAcc: serializer.fromJson<String>(json['nAcc']),
      nInst: serializer.fromJson<String>(json['nInst']),
      nPrep: serializer.fromJson<String>(json['nPrep']),
      plNom: serializer.fromJson<String>(json['plNom']),
      plGen: serializer.fromJson<String>(json['plGen']),
      plDat: serializer.fromJson<String>(json['plDat']),
      plAcc: serializer.fromJson<String>(json['plAcc']),
      plInst: serializer.fromJson<String>(json['plInst']),
      plPrep: serializer.fromJson<String>(json['plPrep']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'bare': serializer.toJson<String>(bare),
      'accented': serializer.toJson<String>(accented),
      'mNom': serializer.toJson<String>(mNom),
      'mGen': serializer.toJson<String>(mGen),
      'mDat': serializer.toJson<String>(mDat),
      'mAcc': serializer.toJson<String>(mAcc),
      'mInst': serializer.toJson<String>(mInst),
      'mPrep': serializer.toJson<String>(mPrep),
      'fNom': serializer.toJson<String>(fNom),
      'fGen': serializer.toJson<String>(fGen),
      'fDat': serializer.toJson<String>(fDat),
      'fAcc': serializer.toJson<String>(fAcc),
      'fInst': serializer.toJson<String>(fInst),
      'fPrep': serializer.toJson<String>(fPrep),
      'nNom': serializer.toJson<String>(nNom),
      'nGen': serializer.toJson<String>(nGen),
      'nDat': serializer.toJson<String>(nDat),
      'nAcc': serializer.toJson<String>(nAcc),
      'nInst': serializer.toJson<String>(nInst),
      'nPrep': serializer.toJson<String>(nPrep),
      'plNom': serializer.toJson<String>(plNom),
      'plGen': serializer.toJson<String>(plGen),
      'plDat': serializer.toJson<String>(plDat),
      'plAcc': serializer.toJson<String>(plAcc),
      'plInst': serializer.toJson<String>(plInst),
      'plPrep': serializer.toJson<String>(plPrep),
    };
  }

  Adjective copyWith(
          {int? id,
          String? bare,
          String? accented,
          String? mNom,
          String? mGen,
          String? mDat,
          String? mAcc,
          String? mInst,
          String? mPrep,
          String? fNom,
          String? fGen,
          String? fDat,
          String? fAcc,
          String? fInst,
          String? fPrep,
          String? nNom,
          String? nGen,
          String? nDat,
          String? nAcc,
          String? nInst,
          String? nPrep,
          String? plNom,
          String? plGen,
          String? plDat,
          String? plAcc,
          String? plInst,
          String? plPrep}) =>
      Adjective(
        id: id ?? this.id,
        bare: bare ?? this.bare,
        accented: accented ?? this.accented,
        mNom: mNom ?? this.mNom,
        mGen: mGen ?? this.mGen,
        mDat: mDat ?? this.mDat,
        mAcc: mAcc ?? this.mAcc,
        mInst: mInst ?? this.mInst,
        mPrep: mPrep ?? this.mPrep,
        fNom: fNom ?? this.fNom,
        fGen: fGen ?? this.fGen,
        fDat: fDat ?? this.fDat,
        fAcc: fAcc ?? this.fAcc,
        fInst: fInst ?? this.fInst,
        fPrep: fPrep ?? this.fPrep,
        nNom: nNom ?? this.nNom,
        nGen: nGen ?? this.nGen,
        nDat: nDat ?? this.nDat,
        nAcc: nAcc ?? this.nAcc,
        nInst: nInst ?? this.nInst,
        nPrep: nPrep ?? this.nPrep,
        plNom: plNom ?? this.plNom,
        plGen: plGen ?? this.plGen,
        plDat: plDat ?? this.plDat,
        plAcc: plAcc ?? this.plAcc,
        plInst: plInst ?? this.plInst,
        plPrep: plPrep ?? this.plPrep,
      );
  @override
  String toString() {
    return (StringBuffer('Adjective(')
          ..write('id: $id, ')
          ..write('bare: $bare, ')
          ..write('accented: $accented, ')
          ..write('mNom: $mNom, ')
          ..write('mGen: $mGen, ')
          ..write('mDat: $mDat, ')
          ..write('mAcc: $mAcc, ')
          ..write('mInst: $mInst, ')
          ..write('mPrep: $mPrep, ')
          ..write('fNom: $fNom, ')
          ..write('fGen: $fGen, ')
          ..write('fDat: $fDat, ')
          ..write('fAcc: $fAcc, ')
          ..write('fInst: $fInst, ')
          ..write('fPrep: $fPrep, ')
          ..write('nNom: $nNom, ')
          ..write('nGen: $nGen, ')
          ..write('nDat: $nDat, ')
          ..write('nAcc: $nAcc, ')
          ..write('nInst: $nInst, ')
          ..write('nPrep: $nPrep, ')
          ..write('plNom: $plNom, ')
          ..write('plGen: $plGen, ')
          ..write('plDat: $plDat, ')
          ..write('plAcc: $plAcc, ')
          ..write('plInst: $plInst, ')
          ..write('plPrep: $plPrep')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          bare.hashCode,
          $mrjc(
              accented.hashCode,
              $mrjc(
                  mNom.hashCode,
                  $mrjc(
                      mGen.hashCode,
                      $mrjc(
                          mDat.hashCode,
                          $mrjc(
                              mAcc.hashCode,
                              $mrjc(
                                  mInst.hashCode,
                                  $mrjc(
                                      mPrep.hashCode,
                                      $mrjc(
                                          fNom.hashCode,
                                          $mrjc(
                                              fGen.hashCode,
                                              $mrjc(
                                                  fDat.hashCode,
                                                  $mrjc(
                                                      fAcc.hashCode,
                                                      $mrjc(
                                                          fInst.hashCode,
                                                          $mrjc(
                                                              fPrep.hashCode,
                                                              $mrjc(
                                                                  nNom.hashCode,
                                                                  $mrjc(
                                                                      nGen
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          nDat
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              nAcc.hashCode,
                                                                              $mrjc(nInst.hashCode, $mrjc(nPrep.hashCode, $mrjc(plNom.hashCode, $mrjc(plGen.hashCode, $mrjc(plDat.hashCode, $mrjc(plAcc.hashCode, $mrjc(plInst.hashCode, plPrep.hashCode)))))))))))))))))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Adjective &&
          other.id == this.id &&
          other.bare == this.bare &&
          other.accented == this.accented &&
          other.mNom == this.mNom &&
          other.mGen == this.mGen &&
          other.mDat == this.mDat &&
          other.mAcc == this.mAcc &&
          other.mInst == this.mInst &&
          other.mPrep == this.mPrep &&
          other.fNom == this.fNom &&
          other.fGen == this.fGen &&
          other.fDat == this.fDat &&
          other.fAcc == this.fAcc &&
          other.fInst == this.fInst &&
          other.fPrep == this.fPrep &&
          other.nNom == this.nNom &&
          other.nGen == this.nGen &&
          other.nDat == this.nDat &&
          other.nAcc == this.nAcc &&
          other.nInst == this.nInst &&
          other.nPrep == this.nPrep &&
          other.plNom == this.plNom &&
          other.plGen == this.plGen &&
          other.plDat == this.plDat &&
          other.plAcc == this.plAcc &&
          other.plInst == this.plInst &&
          other.plPrep == this.plPrep);
}

class AdjectivesCompanion extends UpdateCompanion<Adjective> {
  final Value<int> id;
  final Value<String> bare;
  final Value<String> accented;
  final Value<String> mNom;
  final Value<String> mGen;
  final Value<String> mDat;
  final Value<String> mAcc;
  final Value<String> mInst;
  final Value<String> mPrep;
  final Value<String> fNom;
  final Value<String> fGen;
  final Value<String> fDat;
  final Value<String> fAcc;
  final Value<String> fInst;
  final Value<String> fPrep;
  final Value<String> nNom;
  final Value<String> nGen;
  final Value<String> nDat;
  final Value<String> nAcc;
  final Value<String> nInst;
  final Value<String> nPrep;
  final Value<String> plNom;
  final Value<String> plGen;
  final Value<String> plDat;
  final Value<String> plAcc;
  final Value<String> plInst;
  final Value<String> plPrep;
  const AdjectivesCompanion({
    this.id = const Value.absent(),
    this.bare = const Value.absent(),
    this.accented = const Value.absent(),
    this.mNom = const Value.absent(),
    this.mGen = const Value.absent(),
    this.mDat = const Value.absent(),
    this.mAcc = const Value.absent(),
    this.mInst = const Value.absent(),
    this.mPrep = const Value.absent(),
    this.fNom = const Value.absent(),
    this.fGen = const Value.absent(),
    this.fDat = const Value.absent(),
    this.fAcc = const Value.absent(),
    this.fInst = const Value.absent(),
    this.fPrep = const Value.absent(),
    this.nNom = const Value.absent(),
    this.nGen = const Value.absent(),
    this.nDat = const Value.absent(),
    this.nAcc = const Value.absent(),
    this.nInst = const Value.absent(),
    this.nPrep = const Value.absent(),
    this.plNom = const Value.absent(),
    this.plGen = const Value.absent(),
    this.plDat = const Value.absent(),
    this.plAcc = const Value.absent(),
    this.plInst = const Value.absent(),
    this.plPrep = const Value.absent(),
  });
  AdjectivesCompanion.insert({
    this.id = const Value.absent(),
    required String bare,
    required String accented,
    required String mNom,
    required String mGen,
    required String mDat,
    required String mAcc,
    required String mInst,
    required String mPrep,
    required String fNom,
    required String fGen,
    required String fDat,
    required String fAcc,
    required String fInst,
    required String fPrep,
    required String nNom,
    required String nGen,
    required String nDat,
    required String nAcc,
    required String nInst,
    required String nPrep,
    required String plNom,
    required String plGen,
    required String plDat,
    required String plAcc,
    required String plInst,
    required String plPrep,
  })  : bare = Value(bare),
        accented = Value(accented),
        mNom = Value(mNom),
        mGen = Value(mGen),
        mDat = Value(mDat),
        mAcc = Value(mAcc),
        mInst = Value(mInst),
        mPrep = Value(mPrep),
        fNom = Value(fNom),
        fGen = Value(fGen),
        fDat = Value(fDat),
        fAcc = Value(fAcc),
        fInst = Value(fInst),
        fPrep = Value(fPrep),
        nNom = Value(nNom),
        nGen = Value(nGen),
        nDat = Value(nDat),
        nAcc = Value(nAcc),
        nInst = Value(nInst),
        nPrep = Value(nPrep),
        plNom = Value(plNom),
        plGen = Value(plGen),
        plDat = Value(plDat),
        plAcc = Value(plAcc),
        plInst = Value(plInst),
        plPrep = Value(plPrep);
  static Insertable<Adjective> custom({
    Expression<int>? id,
    Expression<String>? bare,
    Expression<String>? accented,
    Expression<String>? mNom,
    Expression<String>? mGen,
    Expression<String>? mDat,
    Expression<String>? mAcc,
    Expression<String>? mInst,
    Expression<String>? mPrep,
    Expression<String>? fNom,
    Expression<String>? fGen,
    Expression<String>? fDat,
    Expression<String>? fAcc,
    Expression<String>? fInst,
    Expression<String>? fPrep,
    Expression<String>? nNom,
    Expression<String>? nGen,
    Expression<String>? nDat,
    Expression<String>? nAcc,
    Expression<String>? nInst,
    Expression<String>? nPrep,
    Expression<String>? plNom,
    Expression<String>? plGen,
    Expression<String>? plDat,
    Expression<String>? plAcc,
    Expression<String>? plInst,
    Expression<String>? plPrep,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (bare != null) 'bare': bare,
      if (accented != null) 'accented': accented,
      if (mNom != null) 'm_nom': mNom,
      if (mGen != null) 'm_gen': mGen,
      if (mDat != null) 'm_dat': mDat,
      if (mAcc != null) 'm_acc': mAcc,
      if (mInst != null) 'm_inst': mInst,
      if (mPrep != null) 'm_prep': mPrep,
      if (fNom != null) 'f_nom': fNom,
      if (fGen != null) 'f_gen': fGen,
      if (fDat != null) 'f_dat': fDat,
      if (fAcc != null) 'f_acc': fAcc,
      if (fInst != null) 'f_inst': fInst,
      if (fPrep != null) 'f_prep': fPrep,
      if (nNom != null) 'n_nom': nNom,
      if (nGen != null) 'n_gen': nGen,
      if (nDat != null) 'n_dat': nDat,
      if (nAcc != null) 'n_acc': nAcc,
      if (nInst != null) 'n_inst': nInst,
      if (nPrep != null) 'n_prep': nPrep,
      if (plNom != null) 'pl_nom': plNom,
      if (plGen != null) 'pl_gen': plGen,
      if (plDat != null) 'pl_dat': plDat,
      if (plAcc != null) 'pl_acc': plAcc,
      if (plInst != null) 'pl_inst': plInst,
      if (plPrep != null) 'pl_prep': plPrep,
    });
  }

  AdjectivesCompanion copyWith(
      {Value<int>? id,
      Value<String>? bare,
      Value<String>? accented,
      Value<String>? mNom,
      Value<String>? mGen,
      Value<String>? mDat,
      Value<String>? mAcc,
      Value<String>? mInst,
      Value<String>? mPrep,
      Value<String>? fNom,
      Value<String>? fGen,
      Value<String>? fDat,
      Value<String>? fAcc,
      Value<String>? fInst,
      Value<String>? fPrep,
      Value<String>? nNom,
      Value<String>? nGen,
      Value<String>? nDat,
      Value<String>? nAcc,
      Value<String>? nInst,
      Value<String>? nPrep,
      Value<String>? plNom,
      Value<String>? plGen,
      Value<String>? plDat,
      Value<String>? plAcc,
      Value<String>? plInst,
      Value<String>? plPrep}) {
    return AdjectivesCompanion(
      id: id ?? this.id,
      bare: bare ?? this.bare,
      accented: accented ?? this.accented,
      mNom: mNom ?? this.mNom,
      mGen: mGen ?? this.mGen,
      mDat: mDat ?? this.mDat,
      mAcc: mAcc ?? this.mAcc,
      mInst: mInst ?? this.mInst,
      mPrep: mPrep ?? this.mPrep,
      fNom: fNom ?? this.fNom,
      fGen: fGen ?? this.fGen,
      fDat: fDat ?? this.fDat,
      fAcc: fAcc ?? this.fAcc,
      fInst: fInst ?? this.fInst,
      fPrep: fPrep ?? this.fPrep,
      nNom: nNom ?? this.nNom,
      nGen: nGen ?? this.nGen,
      nDat: nDat ?? this.nDat,
      nAcc: nAcc ?? this.nAcc,
      nInst: nInst ?? this.nInst,
      nPrep: nPrep ?? this.nPrep,
      plNom: plNom ?? this.plNom,
      plGen: plGen ?? this.plGen,
      plDat: plDat ?? this.plDat,
      plAcc: plAcc ?? this.plAcc,
      plInst: plInst ?? this.plInst,
      plPrep: plPrep ?? this.plPrep,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (bare.present) {
      map['bare'] = Variable<String>(bare.value);
    }
    if (accented.present) {
      map['accented'] = Variable<String>(accented.value);
    }
    if (mNom.present) {
      map['m_nom'] = Variable<String>(mNom.value);
    }
    if (mGen.present) {
      map['m_gen'] = Variable<String>(mGen.value);
    }
    if (mDat.present) {
      map['m_dat'] = Variable<String>(mDat.value);
    }
    if (mAcc.present) {
      map['m_acc'] = Variable<String>(mAcc.value);
    }
    if (mInst.present) {
      map['m_inst'] = Variable<String>(mInst.value);
    }
    if (mPrep.present) {
      map['m_prep'] = Variable<String>(mPrep.value);
    }
    if (fNom.present) {
      map['f_nom'] = Variable<String>(fNom.value);
    }
    if (fGen.present) {
      map['f_gen'] = Variable<String>(fGen.value);
    }
    if (fDat.present) {
      map['f_dat'] = Variable<String>(fDat.value);
    }
    if (fAcc.present) {
      map['f_acc'] = Variable<String>(fAcc.value);
    }
    if (fInst.present) {
      map['f_inst'] = Variable<String>(fInst.value);
    }
    if (fPrep.present) {
      map['f_prep'] = Variable<String>(fPrep.value);
    }
    if (nNom.present) {
      map['n_nom'] = Variable<String>(nNom.value);
    }
    if (nGen.present) {
      map['n_gen'] = Variable<String>(nGen.value);
    }
    if (nDat.present) {
      map['n_dat'] = Variable<String>(nDat.value);
    }
    if (nAcc.present) {
      map['n_acc'] = Variable<String>(nAcc.value);
    }
    if (nInst.present) {
      map['n_inst'] = Variable<String>(nInst.value);
    }
    if (nPrep.present) {
      map['n_prep'] = Variable<String>(nPrep.value);
    }
    if (plNom.present) {
      map['pl_nom'] = Variable<String>(plNom.value);
    }
    if (plGen.present) {
      map['pl_gen'] = Variable<String>(plGen.value);
    }
    if (plDat.present) {
      map['pl_dat'] = Variable<String>(plDat.value);
    }
    if (plAcc.present) {
      map['pl_acc'] = Variable<String>(plAcc.value);
    }
    if (plInst.present) {
      map['pl_inst'] = Variable<String>(plInst.value);
    }
    if (plPrep.present) {
      map['pl_prep'] = Variable<String>(plPrep.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AdjectivesCompanion(')
          ..write('id: $id, ')
          ..write('bare: $bare, ')
          ..write('accented: $accented, ')
          ..write('mNom: $mNom, ')
          ..write('mGen: $mGen, ')
          ..write('mDat: $mDat, ')
          ..write('mAcc: $mAcc, ')
          ..write('mInst: $mInst, ')
          ..write('mPrep: $mPrep, ')
          ..write('fNom: $fNom, ')
          ..write('fGen: $fGen, ')
          ..write('fDat: $fDat, ')
          ..write('fAcc: $fAcc, ')
          ..write('fInst: $fInst, ')
          ..write('fPrep: $fPrep, ')
          ..write('nNom: $nNom, ')
          ..write('nGen: $nGen, ')
          ..write('nDat: $nDat, ')
          ..write('nAcc: $nAcc, ')
          ..write('nInst: $nInst, ')
          ..write('nPrep: $nPrep, ')
          ..write('plNom: $plNom, ')
          ..write('plGen: $plGen, ')
          ..write('plDat: $plDat, ')
          ..write('plAcc: $plAcc, ')
          ..write('plInst: $plInst, ')
          ..write('plPrep: $plPrep')
          ..write(')'))
        .toString();
  }
}

class $AdjectivesTable extends Adjectives
    with TableInfo<$AdjectivesTable, Adjective> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AdjectivesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _bareMeta = const VerificationMeta('bare');
  late final GeneratedColumn<String?> bare = GeneratedColumn<String?>(
      'bare', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _accentedMeta = const VerificationMeta('accented');
  late final GeneratedColumn<String?> accented = GeneratedColumn<String?>(
      'accented', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _mNomMeta = const VerificationMeta('mNom');
  late final GeneratedColumn<String?> mNom = GeneratedColumn<String?>(
      'm_nom', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _mGenMeta = const VerificationMeta('mGen');
  late final GeneratedColumn<String?> mGen = GeneratedColumn<String?>(
      'm_gen', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _mDatMeta = const VerificationMeta('mDat');
  late final GeneratedColumn<String?> mDat = GeneratedColumn<String?>(
      'm_dat', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _mAccMeta = const VerificationMeta('mAcc');
  late final GeneratedColumn<String?> mAcc = GeneratedColumn<String?>(
      'm_acc', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _mInstMeta = const VerificationMeta('mInst');
  late final GeneratedColumn<String?> mInst = GeneratedColumn<String?>(
      'm_inst', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _mPrepMeta = const VerificationMeta('mPrep');
  late final GeneratedColumn<String?> mPrep = GeneratedColumn<String?>(
      'm_prep', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _fNomMeta = const VerificationMeta('fNom');
  late final GeneratedColumn<String?> fNom = GeneratedColumn<String?>(
      'f_nom', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _fGenMeta = const VerificationMeta('fGen');
  late final GeneratedColumn<String?> fGen = GeneratedColumn<String?>(
      'f_gen', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _fDatMeta = const VerificationMeta('fDat');
  late final GeneratedColumn<String?> fDat = GeneratedColumn<String?>(
      'f_dat', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _fAccMeta = const VerificationMeta('fAcc');
  late final GeneratedColumn<String?> fAcc = GeneratedColumn<String?>(
      'f_acc', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _fInstMeta = const VerificationMeta('fInst');
  late final GeneratedColumn<String?> fInst = GeneratedColumn<String?>(
      'f_inst', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _fPrepMeta = const VerificationMeta('fPrep');
  late final GeneratedColumn<String?> fPrep = GeneratedColumn<String?>(
      'f_prep', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nNomMeta = const VerificationMeta('nNom');
  late final GeneratedColumn<String?> nNom = GeneratedColumn<String?>(
      'n_nom', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nGenMeta = const VerificationMeta('nGen');
  late final GeneratedColumn<String?> nGen = GeneratedColumn<String?>(
      'n_gen', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nDatMeta = const VerificationMeta('nDat');
  late final GeneratedColumn<String?> nDat = GeneratedColumn<String?>(
      'n_dat', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nAccMeta = const VerificationMeta('nAcc');
  late final GeneratedColumn<String?> nAcc = GeneratedColumn<String?>(
      'n_acc', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nInstMeta = const VerificationMeta('nInst');
  late final GeneratedColumn<String?> nInst = GeneratedColumn<String?>(
      'n_inst', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nPrepMeta = const VerificationMeta('nPrep');
  late final GeneratedColumn<String?> nPrep = GeneratedColumn<String?>(
      'n_prep', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plNomMeta = const VerificationMeta('plNom');
  late final GeneratedColumn<String?> plNom = GeneratedColumn<String?>(
      'pl_nom', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plGenMeta = const VerificationMeta('plGen');
  late final GeneratedColumn<String?> plGen = GeneratedColumn<String?>(
      'pl_gen', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plDatMeta = const VerificationMeta('plDat');
  late final GeneratedColumn<String?> plDat = GeneratedColumn<String?>(
      'pl_dat', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plAccMeta = const VerificationMeta('plAcc');
  late final GeneratedColumn<String?> plAcc = GeneratedColumn<String?>(
      'pl_acc', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plInstMeta = const VerificationMeta('plInst');
  late final GeneratedColumn<String?> plInst = GeneratedColumn<String?>(
      'pl_inst', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _plPrepMeta = const VerificationMeta('plPrep');
  late final GeneratedColumn<String?> plPrep = GeneratedColumn<String?>(
      'pl_prep', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        bare,
        accented,
        mNom,
        mGen,
        mDat,
        mAcc,
        mInst,
        mPrep,
        fNom,
        fGen,
        fDat,
        fAcc,
        fInst,
        fPrep,
        nNom,
        nGen,
        nDat,
        nAcc,
        nInst,
        nPrep,
        plNom,
        plGen,
        plDat,
        plAcc,
        plInst,
        plPrep
      ];
  @override
  String get aliasedName => _alias ?? 'adjectives';
  @override
  String get actualTableName => 'adjectives';
  @override
  VerificationContext validateIntegrity(Insertable<Adjective> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('bare')) {
      context.handle(
          _bareMeta, bare.isAcceptableOrUnknown(data['bare']!, _bareMeta));
    } else if (isInserting) {
      context.missing(_bareMeta);
    }
    if (data.containsKey('accented')) {
      context.handle(_accentedMeta,
          accented.isAcceptableOrUnknown(data['accented']!, _accentedMeta));
    } else if (isInserting) {
      context.missing(_accentedMeta);
    }
    if (data.containsKey('m_nom')) {
      context.handle(
          _mNomMeta, mNom.isAcceptableOrUnknown(data['m_nom']!, _mNomMeta));
    } else if (isInserting) {
      context.missing(_mNomMeta);
    }
    if (data.containsKey('m_gen')) {
      context.handle(
          _mGenMeta, mGen.isAcceptableOrUnknown(data['m_gen']!, _mGenMeta));
    } else if (isInserting) {
      context.missing(_mGenMeta);
    }
    if (data.containsKey('m_dat')) {
      context.handle(
          _mDatMeta, mDat.isAcceptableOrUnknown(data['m_dat']!, _mDatMeta));
    } else if (isInserting) {
      context.missing(_mDatMeta);
    }
    if (data.containsKey('m_acc')) {
      context.handle(
          _mAccMeta, mAcc.isAcceptableOrUnknown(data['m_acc']!, _mAccMeta));
    } else if (isInserting) {
      context.missing(_mAccMeta);
    }
    if (data.containsKey('m_inst')) {
      context.handle(
          _mInstMeta, mInst.isAcceptableOrUnknown(data['m_inst']!, _mInstMeta));
    } else if (isInserting) {
      context.missing(_mInstMeta);
    }
    if (data.containsKey('m_prep')) {
      context.handle(
          _mPrepMeta, mPrep.isAcceptableOrUnknown(data['m_prep']!, _mPrepMeta));
    } else if (isInserting) {
      context.missing(_mPrepMeta);
    }
    if (data.containsKey('f_nom')) {
      context.handle(
          _fNomMeta, fNom.isAcceptableOrUnknown(data['f_nom']!, _fNomMeta));
    } else if (isInserting) {
      context.missing(_fNomMeta);
    }
    if (data.containsKey('f_gen')) {
      context.handle(
          _fGenMeta, fGen.isAcceptableOrUnknown(data['f_gen']!, _fGenMeta));
    } else if (isInserting) {
      context.missing(_fGenMeta);
    }
    if (data.containsKey('f_dat')) {
      context.handle(
          _fDatMeta, fDat.isAcceptableOrUnknown(data['f_dat']!, _fDatMeta));
    } else if (isInserting) {
      context.missing(_fDatMeta);
    }
    if (data.containsKey('f_acc')) {
      context.handle(
          _fAccMeta, fAcc.isAcceptableOrUnknown(data['f_acc']!, _fAccMeta));
    } else if (isInserting) {
      context.missing(_fAccMeta);
    }
    if (data.containsKey('f_inst')) {
      context.handle(
          _fInstMeta, fInst.isAcceptableOrUnknown(data['f_inst']!, _fInstMeta));
    } else if (isInserting) {
      context.missing(_fInstMeta);
    }
    if (data.containsKey('f_prep')) {
      context.handle(
          _fPrepMeta, fPrep.isAcceptableOrUnknown(data['f_prep']!, _fPrepMeta));
    } else if (isInserting) {
      context.missing(_fPrepMeta);
    }
    if (data.containsKey('n_nom')) {
      context.handle(
          _nNomMeta, nNom.isAcceptableOrUnknown(data['n_nom']!, _nNomMeta));
    } else if (isInserting) {
      context.missing(_nNomMeta);
    }
    if (data.containsKey('n_gen')) {
      context.handle(
          _nGenMeta, nGen.isAcceptableOrUnknown(data['n_gen']!, _nGenMeta));
    } else if (isInserting) {
      context.missing(_nGenMeta);
    }
    if (data.containsKey('n_dat')) {
      context.handle(
          _nDatMeta, nDat.isAcceptableOrUnknown(data['n_dat']!, _nDatMeta));
    } else if (isInserting) {
      context.missing(_nDatMeta);
    }
    if (data.containsKey('n_acc')) {
      context.handle(
          _nAccMeta, nAcc.isAcceptableOrUnknown(data['n_acc']!, _nAccMeta));
    } else if (isInserting) {
      context.missing(_nAccMeta);
    }
    if (data.containsKey('n_inst')) {
      context.handle(
          _nInstMeta, nInst.isAcceptableOrUnknown(data['n_inst']!, _nInstMeta));
    } else if (isInserting) {
      context.missing(_nInstMeta);
    }
    if (data.containsKey('n_prep')) {
      context.handle(
          _nPrepMeta, nPrep.isAcceptableOrUnknown(data['n_prep']!, _nPrepMeta));
    } else if (isInserting) {
      context.missing(_nPrepMeta);
    }
    if (data.containsKey('pl_nom')) {
      context.handle(
          _plNomMeta, plNom.isAcceptableOrUnknown(data['pl_nom']!, _plNomMeta));
    } else if (isInserting) {
      context.missing(_plNomMeta);
    }
    if (data.containsKey('pl_gen')) {
      context.handle(
          _plGenMeta, plGen.isAcceptableOrUnknown(data['pl_gen']!, _plGenMeta));
    } else if (isInserting) {
      context.missing(_plGenMeta);
    }
    if (data.containsKey('pl_dat')) {
      context.handle(
          _plDatMeta, plDat.isAcceptableOrUnknown(data['pl_dat']!, _plDatMeta));
    } else if (isInserting) {
      context.missing(_plDatMeta);
    }
    if (data.containsKey('pl_acc')) {
      context.handle(
          _plAccMeta, plAcc.isAcceptableOrUnknown(data['pl_acc']!, _plAccMeta));
    } else if (isInserting) {
      context.missing(_plAccMeta);
    }
    if (data.containsKey('pl_inst')) {
      context.handle(_plInstMeta,
          plInst.isAcceptableOrUnknown(data['pl_inst']!, _plInstMeta));
    } else if (isInserting) {
      context.missing(_plInstMeta);
    }
    if (data.containsKey('pl_prep')) {
      context.handle(_plPrepMeta,
          plPrep.isAcceptableOrUnknown(data['pl_prep']!, _plPrepMeta));
    } else if (isInserting) {
      context.missing(_plPrepMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Adjective map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Adjective.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AdjectivesTable createAlias(String alias) {
    return $AdjectivesTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $NounsTable nouns = $NounsTable(this);
  late final $AdjectivesTable adjectives = $AdjectivesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [nouns, adjectives];
}
