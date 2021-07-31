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
  final String translationsEN;
  final String translationsDE;
  final Gender gender;
  final bool animate;
  final bool indeclinable;
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
      required this.translationsEN,
      required this.translationsDE,
      required this.gender,
      required this.animate,
      required this.indeclinable,
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
      translationsEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}translations_e_n'])!,
      translationsDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}translations_d_e'])!,
      gender: $NounsTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gender']))!,
      animate: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}animate'])!,
      indeclinable: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}indeclinable'])!,
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
    map['translations_e_n'] = Variable<String>(translationsEN);
    map['translations_d_e'] = Variable<String>(translationsDE);
    {
      final converter = $NounsTable.$converter0;
      map['gender'] = Variable<int>(converter.mapToSql(gender)!);
    }
    map['animate'] = Variable<bool>(animate);
    map['indeclinable'] = Variable<bool>(indeclinable);
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
      translationsEN: Value(translationsEN),
      translationsDE: Value(translationsDE),
      gender: Value(gender),
      animate: Value(animate),
      indeclinable: Value(indeclinable),
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
      translationsEN: serializer.fromJson<String>(json['translationsEN']),
      translationsDE: serializer.fromJson<String>(json['translationsDE']),
      gender: serializer.fromJson<Gender>(json['gender']),
      animate: serializer.fromJson<bool>(json['animate']),
      indeclinable: serializer.fromJson<bool>(json['indeclinable']),
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
      'translationsEN': serializer.toJson<String>(translationsEN),
      'translationsDE': serializer.toJson<String>(translationsDE),
      'gender': serializer.toJson<Gender>(gender),
      'animate': serializer.toJson<bool>(animate),
      'indeclinable': serializer.toJson<bool>(indeclinable),
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
          String? translationsEN,
          String? translationsDE,
          Gender? gender,
          bool? animate,
          bool? indeclinable,
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
        translationsEN: translationsEN ?? this.translationsEN,
        translationsDE: translationsDE ?? this.translationsDE,
        gender: gender ?? this.gender,
        animate: animate ?? this.animate,
        indeclinable: indeclinable ?? this.indeclinable,
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
          ..write('translationsEN: $translationsEN, ')
          ..write('translationsDE: $translationsDE, ')
          ..write('gender: $gender, ')
          ..write('animate: $animate, ')
          ..write('indeclinable: $indeclinable, ')
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
                  translationsEN.hashCode,
                  $mrjc(
                      translationsDE.hashCode,
                      $mrjc(
                          gender.hashCode,
                          $mrjc(
                              animate.hashCode,
                              $mrjc(
                                  indeclinable.hashCode,
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
          other.translationsEN == this.translationsEN &&
          other.translationsDE == this.translationsDE &&
          other.gender == this.gender &&
          other.animate == this.animate &&
          other.indeclinable == this.indeclinable &&
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
  final Value<String> translationsEN;
  final Value<String> translationsDE;
  final Value<Gender> gender;
  final Value<bool> animate;
  final Value<bool> indeclinable;
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
    this.translationsEN = const Value.absent(),
    this.translationsDE = const Value.absent(),
    this.gender = const Value.absent(),
    this.animate = const Value.absent(),
    this.indeclinable = const Value.absent(),
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
    required String translationsEN,
    required String translationsDE,
    required Gender gender,
    required bool animate,
    required bool indeclinable,
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
        translationsEN = Value(translationsEN),
        translationsDE = Value(translationsDE),
        gender = Value(gender),
        animate = Value(animate),
        indeclinable = Value(indeclinable),
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
    Expression<String>? translationsEN,
    Expression<String>? translationsDE,
    Expression<Gender>? gender,
    Expression<bool>? animate,
    Expression<bool>? indeclinable,
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
      if (translationsEN != null) 'translations_e_n': translationsEN,
      if (translationsDE != null) 'translations_d_e': translationsDE,
      if (gender != null) 'gender': gender,
      if (animate != null) 'animate': animate,
      if (indeclinable != null) 'indeclinable': indeclinable,
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
      Value<String>? translationsEN,
      Value<String>? translationsDE,
      Value<Gender>? gender,
      Value<bool>? animate,
      Value<bool>? indeclinable,
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
      translationsEN: translationsEN ?? this.translationsEN,
      translationsDE: translationsDE ?? this.translationsDE,
      gender: gender ?? this.gender,
      animate: animate ?? this.animate,
      indeclinable: indeclinable ?? this.indeclinable,
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
    if (translationsEN.present) {
      map['translations_e_n'] = Variable<String>(translationsEN.value);
    }
    if (translationsDE.present) {
      map['translations_d_e'] = Variable<String>(translationsDE.value);
    }
    if (gender.present) {
      final converter = $NounsTable.$converter0;
      map['gender'] = Variable<int>(converter.mapToSql(gender.value)!);
    }
    if (animate.present) {
      map['animate'] = Variable<bool>(animate.value);
    }
    if (indeclinable.present) {
      map['indeclinable'] = Variable<bool>(indeclinable.value);
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
          ..write('translationsEN: $translationsEN, ')
          ..write('translationsDE: $translationsDE, ')
          ..write('gender: $gender, ')
          ..write('animate: $animate, ')
          ..write('indeclinable: $indeclinable, ')
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
  final VerificationMeta _translationsENMeta =
      const VerificationMeta('translationsEN');
  late final GeneratedColumn<String?> translationsEN = GeneratedColumn<String?>(
      'translations_e_n', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _translationsDEMeta =
      const VerificationMeta('translationsDE');
  late final GeneratedColumn<String?> translationsDE = GeneratedColumn<String?>(
      'translations_d_e', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  late final GeneratedColumnWithTypeConverter<Gender, int?> gender =
      GeneratedColumn<int?>('gender', aliasedName, false,
              typeName: 'INTEGER', requiredDuringInsert: true)
          .withConverter<Gender>($NounsTable.$converter0);
  final VerificationMeta _animateMeta = const VerificationMeta('animate');
  late final GeneratedColumn<bool?> animate = GeneratedColumn<bool?>(
      'animate', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (animate IN (0, 1))');
  final VerificationMeta _indeclinableMeta =
      const VerificationMeta('indeclinable');
  late final GeneratedColumn<bool?> indeclinable = GeneratedColumn<bool?>(
      'indeclinable', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (indeclinable IN (0, 1))');
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
        translationsEN,
        translationsDE,
        gender,
        animate,
        indeclinable,
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
    if (data.containsKey('translations_e_n')) {
      context.handle(
          _translationsENMeta,
          translationsEN.isAcceptableOrUnknown(
              data['translations_e_n']!, _translationsENMeta));
    } else if (isInserting) {
      context.missing(_translationsENMeta);
    }
    if (data.containsKey('translations_d_e')) {
      context.handle(
          _translationsDEMeta,
          translationsDE.isAcceptableOrUnknown(
              data['translations_d_e']!, _translationsDEMeta));
    } else if (isInserting) {
      context.missing(_translationsDEMeta);
    }
    context.handle(_genderMeta, const VerificationResult.success());
    if (data.containsKey('animate')) {
      context.handle(_animateMeta,
          animate.isAcceptableOrUnknown(data['animate']!, _animateMeta));
    } else if (isInserting) {
      context.missing(_animateMeta);
    }
    if (data.containsKey('indeclinable')) {
      context.handle(
          _indeclinableMeta,
          indeclinable.isAcceptableOrUnknown(
              data['indeclinable']!, _indeclinableMeta));
    } else if (isInserting) {
      context.missing(_indeclinableMeta);
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

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $NounsTable nouns = $NounsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [nouns];
}
