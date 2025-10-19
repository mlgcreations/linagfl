// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUsuarioCollection on Isar {
  IsarCollection<Usuario> get usuarios => this.collection();
}

const UsuarioSchema = CollectionSchema(
  name: r'Usuario',
  id: 2086545823229412462,
  properties: {
    r'dispositivoActualId': PropertySchema(
      id: 0,
      name: r'dispositivoActualId',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 1,
      name: r'email',
      type: IsarType.string,
    ),
    r'fechaRegistro': PropertySchema(
      id: 2,
      name: r'fechaRegistro',
      type: IsarType.dateTime,
    ),
    r'formatoCitacionDefault': PropertySchema(
      id: 3,
      name: r'formatoCitacionDefault',
      type: IsarType.string,
    ),
    r'modoOffline': PropertySchema(
      id: 4,
      name: r'modoOffline',
      type: IsarType.bool,
    ),
    r'nombre': PropertySchema(
      id: 5,
      name: r'nombre',
      type: IsarType.string,
    ),
    r'ultimaActividad': PropertySchema(
      id: 6,
      name: r'ultimaActividad',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 7,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _usuarioEstimateSize,
  serialize: _usuarioSerialize,
  deserialize: _usuarioDeserialize,
  deserializeProp: _usuarioDeserializeProp,
  idName: r'id',
  indexes: {
    r'userId': IndexSchema(
      id: -2005826577402374815,
      name: r'userId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'userId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'fechaRegistro': IndexSchema(
      id: 1064754610049038936,
      name: r'fechaRegistro',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fechaRegistro',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _usuarioGetId,
  getLinks: _usuarioGetLinks,
  attach: _usuarioAttach,
  version: '3.1.0+1',
);

int _usuarioEstimateSize(
  Usuario object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.dispositivoActualId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.formatoCitacionDefault.length * 3;
  bytesCount += 3 + object.nombre.length * 3;
  bytesCount += 3 + object.userId.length * 3;
  return bytesCount;
}

void _usuarioSerialize(
  Usuario object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.dispositivoActualId);
  writer.writeString(offsets[1], object.email);
  writer.writeDateTime(offsets[2], object.fechaRegistro);
  writer.writeString(offsets[3], object.formatoCitacionDefault);
  writer.writeBool(offsets[4], object.modoOffline);
  writer.writeString(offsets[5], object.nombre);
  writer.writeDateTime(offsets[6], object.ultimaActividad);
  writer.writeString(offsets[7], object.userId);
}

Usuario _usuarioDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Usuario();
  object.dispositivoActualId = reader.readStringOrNull(offsets[0]);
  object.email = reader.readStringOrNull(offsets[1]);
  object.fechaRegistro = reader.readDateTime(offsets[2]);
  object.formatoCitacionDefault = reader.readString(offsets[3]);
  object.id = id;
  object.modoOffline = reader.readBool(offsets[4]);
  object.nombre = reader.readString(offsets[5]);
  object.ultimaActividad = reader.readDateTimeOrNull(offsets[6]);
  object.userId = reader.readString(offsets[7]);
  return object;
}

P _usuarioDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _usuarioGetId(Usuario object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _usuarioGetLinks(Usuario object) {
  return [];
}

void _usuarioAttach(IsarCollection<dynamic> col, Id id, Usuario object) {
  object.id = id;
}

extension UsuarioByIndex on IsarCollection<Usuario> {
  Future<Usuario?> getByUserId(String userId) {
    return getByIndex(r'userId', [userId]);
  }

  Usuario? getByUserIdSync(String userId) {
    return getByIndexSync(r'userId', [userId]);
  }

  Future<bool> deleteByUserId(String userId) {
    return deleteByIndex(r'userId', [userId]);
  }

  bool deleteByUserIdSync(String userId) {
    return deleteByIndexSync(r'userId', [userId]);
  }

  Future<List<Usuario?>> getAllByUserId(List<String> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'userId', values);
  }

  List<Usuario?> getAllByUserIdSync(List<String> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'userId', values);
  }

  Future<int> deleteAllByUserId(List<String> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'userId', values);
  }

  int deleteAllByUserIdSync(List<String> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'userId', values);
  }

  Future<Id> putByUserId(Usuario object) {
    return putByIndex(r'userId', object);
  }

  Id putByUserIdSync(Usuario object, {bool saveLinks = true}) {
    return putByIndexSync(r'userId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUserId(List<Usuario> objects) {
    return putAllByIndex(r'userId', objects);
  }

  List<Id> putAllByUserIdSync(List<Usuario> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'userId', objects, saveLinks: saveLinks);
  }
}

extension UsuarioQueryWhereSort on QueryBuilder<Usuario, Usuario, QWhere> {
  QueryBuilder<Usuario, Usuario, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhere> anyFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fechaRegistro'),
      );
    });
  }
}

extension UsuarioQueryWhere on QueryBuilder<Usuario, Usuario, QWhereClause> {
  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> userIdEqualTo(
      String userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userId',
        value: [userId],
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> userIdNotEqualTo(
      String userId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userId',
              lower: [],
              upper: [userId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userId',
              lower: [userId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userId',
              lower: [userId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userId',
              lower: [],
              upper: [userId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> fechaRegistroEqualTo(
      DateTime fechaRegistro) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fechaRegistro',
        value: [fechaRegistro],
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> fechaRegistroNotEqualTo(
      DateTime fechaRegistro) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaRegistro',
              lower: [],
              upper: [fechaRegistro],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaRegistro',
              lower: [fechaRegistro],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaRegistro',
              lower: [fechaRegistro],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaRegistro',
              lower: [],
              upper: [fechaRegistro],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> fechaRegistroGreaterThan(
    DateTime fechaRegistro, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaRegistro',
        lower: [fechaRegistro],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> fechaRegistroLessThan(
    DateTime fechaRegistro, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaRegistro',
        lower: [],
        upper: [fechaRegistro],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> fechaRegistroBetween(
    DateTime lowerFechaRegistro,
    DateTime upperFechaRegistro, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaRegistro',
        lower: [lowerFechaRegistro],
        includeLower: includeLower,
        upper: [upperFechaRegistro],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UsuarioQueryFilter
    on QueryBuilder<Usuario, Usuario, QFilterCondition> {
  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dispositivoActualId',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dispositivoActualId',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoActualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispositivoActualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispositivoActualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispositivoActualId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispositivoActualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispositivoActualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispositivoActualId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispositivoActualId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoActualId',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      dispositivoActualIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispositivoActualId',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fechaRegistroEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      fechaRegistroGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fechaRegistroLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaRegistro',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fechaRegistroBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaRegistro',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formatoCitacionDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formatoCitacionDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formatoCitacionDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formatoCitacionDefault',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formatoCitacionDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formatoCitacionDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formatoCitacionDefault',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formatoCitacionDefault',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formatoCitacionDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      formatoCitacionDefaultIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formatoCitacionDefault',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> modoOfflineEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modoOffline',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      ultimaActividadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ultimaActividad',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      ultimaActividadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ultimaActividad',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> ultimaActividadEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ultimaActividad',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      ultimaActividadGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ultimaActividad',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> ultimaActividadLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ultimaActividad',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> ultimaActividadBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ultimaActividad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension UsuarioQueryObject
    on QueryBuilder<Usuario, Usuario, QFilterCondition> {}

extension UsuarioQueryLinks
    on QueryBuilder<Usuario, Usuario, QFilterCondition> {}

extension UsuarioQuerySortBy on QueryBuilder<Usuario, Usuario, QSortBy> {
  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByDispositivoActualId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoActualId', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByDispositivoActualIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoActualId', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByFormatoCitacionDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formatoCitacionDefault', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy>
      sortByFormatoCitacionDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formatoCitacionDefault', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByModoOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modoOffline', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByModoOfflineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modoOffline', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUltimaActividad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimaActividad', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUltimaActividadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimaActividad', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UsuarioQuerySortThenBy
    on QueryBuilder<Usuario, Usuario, QSortThenBy> {
  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByDispositivoActualId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoActualId', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByDispositivoActualIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoActualId', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByFechaRegistroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaRegistro', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByFormatoCitacionDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formatoCitacionDefault', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy>
      thenByFormatoCitacionDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formatoCitacionDefault', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByModoOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modoOffline', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByModoOfflineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modoOffline', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUltimaActividad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimaActividad', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUltimaActividadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimaActividad', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UsuarioQueryWhereDistinct
    on QueryBuilder<Usuario, Usuario, QDistinct> {
  QueryBuilder<Usuario, Usuario, QDistinct> distinctByDispositivoActualId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispositivoActualId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByFechaRegistro() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaRegistro');
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByFormatoCitacionDefault(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formatoCitacionDefault',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByModoOffline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modoOffline');
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByUltimaActividad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ultimaActividad');
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension UsuarioQueryProperty
    on QueryBuilder<Usuario, Usuario, QQueryProperty> {
  QueryBuilder<Usuario, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Usuario, String?, QQueryOperations>
      dispositivoActualIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispositivoActualId');
    });
  }

  QueryBuilder<Usuario, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<Usuario, DateTime, QQueryOperations> fechaRegistroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaRegistro');
    });
  }

  QueryBuilder<Usuario, String, QQueryOperations>
      formatoCitacionDefaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formatoCitacionDefault');
    });
  }

  QueryBuilder<Usuario, bool, QQueryOperations> modoOfflineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modoOffline');
    });
  }

  QueryBuilder<Usuario, String, QQueryOperations> nombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre');
    });
  }

  QueryBuilder<Usuario, DateTime?, QQueryOperations> ultimaActividadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ultimaActividad');
    });
  }

  QueryBuilder<Usuario, String, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDispositivoCollection on Isar {
  IsarCollection<Dispositivo> get dispositivos => this.collection();
}

const DispositivoSchema = CollectionSchema(
  name: r'Dispositivo',
  id: -5216925344621765453,
  properties: {
    r'activo': PropertySchema(
      id: 0,
      name: r'activo',
      type: IsarType.bool,
    ),
    r'carpetaLibros': PropertySchema(
      id: 1,
      name: r'carpetaLibros',
      type: IsarType.string,
    ),
    r'dispositivoId': PropertySchema(
      id: 2,
      name: r'dispositivoId',
      type: IsarType.string,
    ),
    r'esRey': PropertySchema(
      id: 3,
      name: r'esRey',
      type: IsarType.bool,
    ),
    r'fechaVinculacion': PropertySchema(
      id: 4,
      name: r'fechaVinculacion',
      type: IsarType.dateTime,
    ),
    r'ipLocal': PropertySchema(
      id: 5,
      name: r'ipLocal',
      type: IsarType.string,
    ),
    r'lectorApp': PropertySchema(
      id: 6,
      name: r'lectorApp',
      type: IsarType.string,
    ),
    r'nombre': PropertySchema(
      id: 7,
      name: r'nombre',
      type: IsarType.string,
    ),
    r'peerIdWebRTC': PropertySchema(
      id: 8,
      name: r'peerIdWebRTC',
      type: IsarType.string,
    ),
    r'tipo': PropertySchema(
      id: 9,
      name: r'tipo',
      type: IsarType.string,
    ),
    r'ultimoHeartbeat': PropertySchema(
      id: 10,
      name: r'ultimoHeartbeat',
      type: IsarType.dateTime,
    ),
    r'usuarioId': PropertySchema(
      id: 11,
      name: r'usuarioId',
      type: IsarType.string,
    )
  },
  estimateSize: _dispositivoEstimateSize,
  serialize: _dispositivoSerialize,
  deserialize: _dispositivoDeserialize,
  deserializeProp: _dispositivoDeserializeProp,
  idName: r'id',
  indexes: {
    r'dispositivoId': IndexSchema(
      id: -5900496080732030819,
      name: r'dispositivoId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'dispositivoId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'fechaVinculacion': IndexSchema(
      id: -7422132545074899569,
      name: r'fechaVinculacion',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fechaVinculacion',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _dispositivoGetId,
  getLinks: _dispositivoGetLinks,
  attach: _dispositivoAttach,
  version: '3.1.0+1',
);

int _dispositivoEstimateSize(
  Dispositivo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.carpetaLibros;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.dispositivoId.length * 3;
  {
    final value = object.ipLocal;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lectorApp;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.nombre.length * 3;
  {
    final value = object.peerIdWebRTC;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tipo.length * 3;
  bytesCount += 3 + object.usuarioId.length * 3;
  return bytesCount;
}

void _dispositivoSerialize(
  Dispositivo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.activo);
  writer.writeString(offsets[1], object.carpetaLibros);
  writer.writeString(offsets[2], object.dispositivoId);
  writer.writeBool(offsets[3], object.esRey);
  writer.writeDateTime(offsets[4], object.fechaVinculacion);
  writer.writeString(offsets[5], object.ipLocal);
  writer.writeString(offsets[6], object.lectorApp);
  writer.writeString(offsets[7], object.nombre);
  writer.writeString(offsets[8], object.peerIdWebRTC);
  writer.writeString(offsets[9], object.tipo);
  writer.writeDateTime(offsets[10], object.ultimoHeartbeat);
  writer.writeString(offsets[11], object.usuarioId);
}

Dispositivo _dispositivoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Dispositivo();
  object.activo = reader.readBool(offsets[0]);
  object.carpetaLibros = reader.readStringOrNull(offsets[1]);
  object.dispositivoId = reader.readString(offsets[2]);
  object.esRey = reader.readBool(offsets[3]);
  object.fechaVinculacion = reader.readDateTime(offsets[4]);
  object.id = id;
  object.ipLocal = reader.readStringOrNull(offsets[5]);
  object.lectorApp = reader.readStringOrNull(offsets[6]);
  object.nombre = reader.readString(offsets[7]);
  object.peerIdWebRTC = reader.readStringOrNull(offsets[8]);
  object.tipo = reader.readString(offsets[9]);
  object.ultimoHeartbeat = reader.readDateTimeOrNull(offsets[10]);
  object.usuarioId = reader.readString(offsets[11]);
  return object;
}

P _dispositivoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dispositivoGetId(Dispositivo object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dispositivoGetLinks(Dispositivo object) {
  return [];
}

void _dispositivoAttach(
    IsarCollection<dynamic> col, Id id, Dispositivo object) {
  object.id = id;
}

extension DispositivoByIndex on IsarCollection<Dispositivo> {
  Future<Dispositivo?> getByDispositivoId(String dispositivoId) {
    return getByIndex(r'dispositivoId', [dispositivoId]);
  }

  Dispositivo? getByDispositivoIdSync(String dispositivoId) {
    return getByIndexSync(r'dispositivoId', [dispositivoId]);
  }

  Future<bool> deleteByDispositivoId(String dispositivoId) {
    return deleteByIndex(r'dispositivoId', [dispositivoId]);
  }

  bool deleteByDispositivoIdSync(String dispositivoId) {
    return deleteByIndexSync(r'dispositivoId', [dispositivoId]);
  }

  Future<List<Dispositivo?>> getAllByDispositivoId(
      List<String> dispositivoIdValues) {
    final values = dispositivoIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'dispositivoId', values);
  }

  List<Dispositivo?> getAllByDispositivoIdSync(
      List<String> dispositivoIdValues) {
    final values = dispositivoIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'dispositivoId', values);
  }

  Future<int> deleteAllByDispositivoId(List<String> dispositivoIdValues) {
    final values = dispositivoIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'dispositivoId', values);
  }

  int deleteAllByDispositivoIdSync(List<String> dispositivoIdValues) {
    final values = dispositivoIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'dispositivoId', values);
  }

  Future<Id> putByDispositivoId(Dispositivo object) {
    return putByIndex(r'dispositivoId', object);
  }

  Id putByDispositivoIdSync(Dispositivo object, {bool saveLinks = true}) {
    return putByIndexSync(r'dispositivoId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDispositivoId(List<Dispositivo> objects) {
    return putAllByIndex(r'dispositivoId', objects);
  }

  List<Id> putAllByDispositivoIdSync(List<Dispositivo> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'dispositivoId', objects, saveLinks: saveLinks);
  }
}

extension DispositivoQueryWhereSort
    on QueryBuilder<Dispositivo, Dispositivo, QWhere> {
  QueryBuilder<Dispositivo, Dispositivo, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhere> anyFechaVinculacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fechaVinculacion'),
      );
    });
  }
}

extension DispositivoQueryWhere
    on QueryBuilder<Dispositivo, Dispositivo, QWhereClause> {
  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause>
      dispositivoIdEqualTo(String dispositivoId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dispositivoId',
        value: [dispositivoId],
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause>
      dispositivoIdNotEqualTo(String dispositivoId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dispositivoId',
              lower: [],
              upper: [dispositivoId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dispositivoId',
              lower: [dispositivoId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dispositivoId',
              lower: [dispositivoId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dispositivoId',
              lower: [],
              upper: [dispositivoId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause>
      fechaVinculacionEqualTo(DateTime fechaVinculacion) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fechaVinculacion',
        value: [fechaVinculacion],
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause>
      fechaVinculacionNotEqualTo(DateTime fechaVinculacion) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaVinculacion',
              lower: [],
              upper: [fechaVinculacion],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaVinculacion',
              lower: [fechaVinculacion],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaVinculacion',
              lower: [fechaVinculacion],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaVinculacion',
              lower: [],
              upper: [fechaVinculacion],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause>
      fechaVinculacionGreaterThan(
    DateTime fechaVinculacion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaVinculacion',
        lower: [fechaVinculacion],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause>
      fechaVinculacionLessThan(
    DateTime fechaVinculacion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaVinculacion',
        lower: [],
        upper: [fechaVinculacion],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterWhereClause>
      fechaVinculacionBetween(
    DateTime lowerFechaVinculacion,
    DateTime upperFechaVinculacion, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaVinculacion',
        lower: [lowerFechaVinculacion],
        includeLower: includeLower,
        upper: [upperFechaVinculacion],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DispositivoQueryFilter
    on QueryBuilder<Dispositivo, Dispositivo, QFilterCondition> {
  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> activoEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activo',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carpetaLibros',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'carpetaLibros',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carpetaLibros',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carpetaLibros',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carpetaLibros',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carpetaLibros',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carpetaLibros',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carpetaLibros',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carpetaLibros',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carpetaLibros',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carpetaLibros',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      carpetaLibrosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'carpetaLibros',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispositivoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispositivoId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoId',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      dispositivoIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispositivoId',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> esReyEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'esRey',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      fechaVinculacionEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaVinculacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      fechaVinculacionGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaVinculacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      fechaVinculacionLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaVinculacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      fechaVinculacionBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaVinculacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ipLocalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ipLocal',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ipLocalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ipLocal',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> ipLocalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ipLocal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ipLocalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ipLocal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> ipLocalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ipLocal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> ipLocalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ipLocal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ipLocalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ipLocal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> ipLocalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ipLocal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> ipLocalContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ipLocal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> ipLocalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ipLocal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ipLocalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ipLocal',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ipLocalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ipLocal',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lectorApp',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lectorApp',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lectorApp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lectorApp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lectorApp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lectorApp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lectorApp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lectorApp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lectorApp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lectorApp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lectorApp',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      lectorAppIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lectorApp',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> nombreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      nombreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> nombreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> nombreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      nombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> nombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> nombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> nombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'peerIdWebRTC',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'peerIdWebRTC',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peerIdWebRTC',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'peerIdWebRTC',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'peerIdWebRTC',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'peerIdWebRTC',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'peerIdWebRTC',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'peerIdWebRTC',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'peerIdWebRTC',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'peerIdWebRTC',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'peerIdWebRTC',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      peerIdWebRTCIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'peerIdWebRTC',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> tipoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> tipoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> tipoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> tipoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> tipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> tipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> tipoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> tipoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition> tipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      tipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ultimoHeartbeatIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ultimoHeartbeat',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ultimoHeartbeatIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ultimoHeartbeat',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ultimoHeartbeatEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ultimoHeartbeat',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ultimoHeartbeatGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ultimoHeartbeat',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ultimoHeartbeatLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ultimoHeartbeat',
        value: value,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      ultimoHeartbeatBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ultimoHeartbeat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterFilterCondition>
      usuarioIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioId',
        value: '',
      ));
    });
  }
}

extension DispositivoQueryObject
    on QueryBuilder<Dispositivo, Dispositivo, QFilterCondition> {}

extension DispositivoQueryLinks
    on QueryBuilder<Dispositivo, Dispositivo, QFilterCondition> {}

extension DispositivoQuerySortBy
    on QueryBuilder<Dispositivo, Dispositivo, QSortBy> {
  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByCarpetaLibros() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carpetaLibros', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      sortByCarpetaLibrosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carpetaLibros', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByDispositivoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      sortByDispositivoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByEsRey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esRey', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByEsReyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esRey', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      sortByFechaVinculacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVinculacion', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      sortByFechaVinculacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVinculacion', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByIpLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ipLocal', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByIpLocalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ipLocal', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByLectorApp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lectorApp', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByLectorAppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lectorApp', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByPeerIdWebRTC() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'peerIdWebRTC', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      sortByPeerIdWebRTCDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'peerIdWebRTC', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByUltimoHeartbeat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoHeartbeat', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      sortByUltimoHeartbeatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoHeartbeat', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> sortByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension DispositivoQuerySortThenBy
    on QueryBuilder<Dispositivo, Dispositivo, QSortThenBy> {
  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activo', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByCarpetaLibros() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carpetaLibros', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      thenByCarpetaLibrosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carpetaLibros', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByDispositivoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      thenByDispositivoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByEsRey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esRey', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByEsReyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esRey', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      thenByFechaVinculacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVinculacion', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      thenByFechaVinculacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaVinculacion', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByIpLocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ipLocal', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByIpLocalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ipLocal', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByLectorApp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lectorApp', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByLectorAppDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lectorApp', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByPeerIdWebRTC() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'peerIdWebRTC', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      thenByPeerIdWebRTCDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'peerIdWebRTC', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByUltimoHeartbeat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoHeartbeat', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy>
      thenByUltimoHeartbeatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoHeartbeat', Sort.desc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QAfterSortBy> thenByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension DispositivoQueryWhereDistinct
    on QueryBuilder<Dispositivo, Dispositivo, QDistinct> {
  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activo');
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByCarpetaLibros(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carpetaLibros',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByDispositivoId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispositivoId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByEsRey() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'esRey');
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct>
      distinctByFechaVinculacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaVinculacion');
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByIpLocal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ipLocal', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByLectorApp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lectorApp', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByPeerIdWebRTC(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'peerIdWebRTC', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByTipo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct>
      distinctByUltimoHeartbeat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ultimoHeartbeat');
    });
  }

  QueryBuilder<Dispositivo, Dispositivo, QDistinct> distinctByUsuarioId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioId', caseSensitive: caseSensitive);
    });
  }
}

extension DispositivoQueryProperty
    on QueryBuilder<Dispositivo, Dispositivo, QQueryProperty> {
  QueryBuilder<Dispositivo, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Dispositivo, bool, QQueryOperations> activoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activo');
    });
  }

  QueryBuilder<Dispositivo, String?, QQueryOperations> carpetaLibrosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carpetaLibros');
    });
  }

  QueryBuilder<Dispositivo, String, QQueryOperations> dispositivoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispositivoId');
    });
  }

  QueryBuilder<Dispositivo, bool, QQueryOperations> esReyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'esRey');
    });
  }

  QueryBuilder<Dispositivo, DateTime, QQueryOperations>
      fechaVinculacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaVinculacion');
    });
  }

  QueryBuilder<Dispositivo, String?, QQueryOperations> ipLocalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ipLocal');
    });
  }

  QueryBuilder<Dispositivo, String?, QQueryOperations> lectorAppProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lectorApp');
    });
  }

  QueryBuilder<Dispositivo, String, QQueryOperations> nombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre');
    });
  }

  QueryBuilder<Dispositivo, String?, QQueryOperations> peerIdWebRTCProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'peerIdWebRTC');
    });
  }

  QueryBuilder<Dispositivo, String, QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }

  QueryBuilder<Dispositivo, DateTime?, QQueryOperations>
      ultimoHeartbeatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ultimoHeartbeat');
    });
  }

  QueryBuilder<Dispositivo, String, QQueryOperations> usuarioIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLibroCollection on Isar {
  IsarCollection<Libro> get libros => this.collection();
}

const LibroSchema = CollectionSchema(
  name: r'Libro',
  id: -497747102442457075,
  properties: {
    r'anioPublicacion': PropertySchema(
      id: 0,
      name: r'anioPublicacion',
      type: IsarType.long,
    ),
    r'autor': PropertySchema(
      id: 1,
      name: r'autor',
      type: IsarType.string,
    ),
    r'categoriaIds': PropertySchema(
      id: 2,
      name: r'categoriaIds',
      type: IsarType.stringList,
    ),
    r'completado': PropertySchema(
      id: 3,
      name: r'completado',
      type: IsarType.bool,
    ),
    r'dispositivoActualizador': PropertySchema(
      id: 4,
      name: r'dispositivoActualizador',
      type: IsarType.string,
    ),
    r'doi': PropertySchema(
      id: 5,
      name: r'doi',
      type: IsarType.string,
    ),
    r'edicion': PropertySchema(
      id: 6,
      name: r'edicion',
      type: IsarType.string,
    ),
    r'editorial': PropertySchema(
      id: 7,
      name: r'editorial',
      type: IsarType.string,
    ),
    r'fechaAgregado': PropertySchema(
      id: 8,
      name: r'fechaAgregado',
      type: IsarType.dateTime,
    ),
    r'fechaCompletado': PropertySchema(
      id: 9,
      name: r'fechaCompletado',
      type: IsarType.dateTime,
    ),
    r'fechaInicio': PropertySchema(
      id: 10,
      name: r'fechaInicio',
      type: IsarType.dateTime,
    ),
    r'fechaUltimaLectura': PropertySchema(
      id: 11,
      name: r'fechaUltimaLectura',
      type: IsarType.dateTime,
    ),
    r'idioma': PropertySchema(
      id: 12,
      name: r'idioma',
      type: IsarType.string,
    ),
    r'isbn': PropertySchema(
      id: 13,
      name: r'isbn',
      type: IsarType.string,
    ),
    r'libroId': PropertySchema(
      id: 14,
      name: r'libroId',
      type: IsarType.string,
    ),
    r'lugarPublicacion': PropertySchema(
      id: 15,
      name: r'lugarPublicacion',
      type: IsarType.string,
    ),
    r'numeroRevista': PropertySchema(
      id: 16,
      name: r'numeroRevista',
      type: IsarType.string,
    ),
    r'paginaActual': PropertySchema(
      id: 17,
      name: r'paginaActual',
      type: IsarType.long,
    ),
    r'rutaArchivo': PropertySchema(
      id: 18,
      name: r'rutaArchivo',
      type: IsarType.string,
    ),
    r'subtitulo': PropertySchema(
      id: 19,
      name: r'subtitulo',
      type: IsarType.string,
    ),
    r'tipoArchivo': PropertySchema(
      id: 20,
      name: r'tipoArchivo',
      type: IsarType.string,
    ),
    r'titulo': PropertySchema(
      id: 21,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'totalPaginas': PropertySchema(
      id: 22,
      name: r'totalPaginas',
      type: IsarType.long,
    ),
    r'ultimoProgreso': PropertySchema(
      id: 23,
      name: r'ultimoProgreso',
      type: IsarType.double,
    ),
    r'url': PropertySchema(
      id: 24,
      name: r'url',
      type: IsarType.string,
    ),
    r'usuarioId': PropertySchema(
      id: 25,
      name: r'usuarioId',
      type: IsarType.string,
    ),
    r'volumen': PropertySchema(
      id: 26,
      name: r'volumen',
      type: IsarType.string,
    )
  },
  estimateSize: _libroEstimateSize,
  serialize: _libroSerialize,
  deserialize: _libroDeserialize,
  deserializeProp: _libroDeserializeProp,
  idName: r'id',
  indexes: {
    r'libroId': IndexSchema(
      id: -5001613540515371850,
      name: r'libroId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'libroId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'fechaAgregado': IndexSchema(
      id: 4752537489869531755,
      name: r'fechaAgregado',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fechaAgregado',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _libroGetId,
  getLinks: _libroGetLinks,
  attach: _libroAttach,
  version: '3.1.0+1',
);

int _libroEstimateSize(
  Libro object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.autor;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.categoriaIds.length * 3;
  {
    for (var i = 0; i < object.categoriaIds.length; i++) {
      final value = object.categoriaIds[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.dispositivoActualizador;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.doi;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.edicion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.editorial;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.idioma;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.isbn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.libroId.length * 3;
  {
    final value = object.lugarPublicacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.numeroRevista;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.rutaArchivo.length * 3;
  {
    final value = object.subtitulo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tipoArchivo.length * 3;
  bytesCount += 3 + object.titulo.length * 3;
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.usuarioId.length * 3;
  {
    final value = object.volumen;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _libroSerialize(
  Libro object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.anioPublicacion);
  writer.writeString(offsets[1], object.autor);
  writer.writeStringList(offsets[2], object.categoriaIds);
  writer.writeBool(offsets[3], object.completado);
  writer.writeString(offsets[4], object.dispositivoActualizador);
  writer.writeString(offsets[5], object.doi);
  writer.writeString(offsets[6], object.edicion);
  writer.writeString(offsets[7], object.editorial);
  writer.writeDateTime(offsets[8], object.fechaAgregado);
  writer.writeDateTime(offsets[9], object.fechaCompletado);
  writer.writeDateTime(offsets[10], object.fechaInicio);
  writer.writeDateTime(offsets[11], object.fechaUltimaLectura);
  writer.writeString(offsets[12], object.idioma);
  writer.writeString(offsets[13], object.isbn);
  writer.writeString(offsets[14], object.libroId);
  writer.writeString(offsets[15], object.lugarPublicacion);
  writer.writeString(offsets[16], object.numeroRevista);
  writer.writeLong(offsets[17], object.paginaActual);
  writer.writeString(offsets[18], object.rutaArchivo);
  writer.writeString(offsets[19], object.subtitulo);
  writer.writeString(offsets[20], object.tipoArchivo);
  writer.writeString(offsets[21], object.titulo);
  writer.writeLong(offsets[22], object.totalPaginas);
  writer.writeDouble(offsets[23], object.ultimoProgreso);
  writer.writeString(offsets[24], object.url);
  writer.writeString(offsets[25], object.usuarioId);
  writer.writeString(offsets[26], object.volumen);
}

Libro _libroDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Libro();
  object.anioPublicacion = reader.readLongOrNull(offsets[0]);
  object.autor = reader.readStringOrNull(offsets[1]);
  object.categoriaIds = reader.readStringList(offsets[2]) ?? [];
  object.completado = reader.readBool(offsets[3]);
  object.dispositivoActualizador = reader.readStringOrNull(offsets[4]);
  object.doi = reader.readStringOrNull(offsets[5]);
  object.edicion = reader.readStringOrNull(offsets[6]);
  object.editorial = reader.readStringOrNull(offsets[7]);
  object.fechaAgregado = reader.readDateTime(offsets[8]);
  object.fechaCompletado = reader.readDateTimeOrNull(offsets[9]);
  object.fechaInicio = reader.readDateTimeOrNull(offsets[10]);
  object.fechaUltimaLectura = reader.readDateTimeOrNull(offsets[11]);
  object.id = id;
  object.idioma = reader.readStringOrNull(offsets[12]);
  object.isbn = reader.readStringOrNull(offsets[13]);
  object.libroId = reader.readString(offsets[14]);
  object.lugarPublicacion = reader.readStringOrNull(offsets[15]);
  object.numeroRevista = reader.readStringOrNull(offsets[16]);
  object.paginaActual = reader.readLongOrNull(offsets[17]);
  object.rutaArchivo = reader.readString(offsets[18]);
  object.subtitulo = reader.readStringOrNull(offsets[19]);
  object.tipoArchivo = reader.readString(offsets[20]);
  object.titulo = reader.readString(offsets[21]);
  object.totalPaginas = reader.readLongOrNull(offsets[22]);
  object.ultimoProgreso = reader.readDouble(offsets[23]);
  object.url = reader.readStringOrNull(offsets[24]);
  object.usuarioId = reader.readString(offsets[25]);
  object.volumen = reader.readStringOrNull(offsets[26]);
  return object;
}

P _libroDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readString(offset)) as P;
    case 22:
      return (reader.readLongOrNull(offset)) as P;
    case 23:
      return (reader.readDouble(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readString(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _libroGetId(Libro object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _libroGetLinks(Libro object) {
  return [];
}

void _libroAttach(IsarCollection<dynamic> col, Id id, Libro object) {
  object.id = id;
}

extension LibroByIndex on IsarCollection<Libro> {
  Future<Libro?> getByLibroId(String libroId) {
    return getByIndex(r'libroId', [libroId]);
  }

  Libro? getByLibroIdSync(String libroId) {
    return getByIndexSync(r'libroId', [libroId]);
  }

  Future<bool> deleteByLibroId(String libroId) {
    return deleteByIndex(r'libroId', [libroId]);
  }

  bool deleteByLibroIdSync(String libroId) {
    return deleteByIndexSync(r'libroId', [libroId]);
  }

  Future<List<Libro?>> getAllByLibroId(List<String> libroIdValues) {
    final values = libroIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'libroId', values);
  }

  List<Libro?> getAllByLibroIdSync(List<String> libroIdValues) {
    final values = libroIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'libroId', values);
  }

  Future<int> deleteAllByLibroId(List<String> libroIdValues) {
    final values = libroIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'libroId', values);
  }

  int deleteAllByLibroIdSync(List<String> libroIdValues) {
    final values = libroIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'libroId', values);
  }

  Future<Id> putByLibroId(Libro object) {
    return putByIndex(r'libroId', object);
  }

  Id putByLibroIdSync(Libro object, {bool saveLinks = true}) {
    return putByIndexSync(r'libroId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByLibroId(List<Libro> objects) {
    return putAllByIndex(r'libroId', objects);
  }

  List<Id> putAllByLibroIdSync(List<Libro> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'libroId', objects, saveLinks: saveLinks);
  }
}

extension LibroQueryWhereSort on QueryBuilder<Libro, Libro, QWhere> {
  QueryBuilder<Libro, Libro, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhere> anyFechaAgregado() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fechaAgregado'),
      );
    });
  }
}

extension LibroQueryWhere on QueryBuilder<Libro, Libro, QWhereClause> {
  QueryBuilder<Libro, Libro, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> libroIdEqualTo(String libroId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'libroId',
        value: [libroId],
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> libroIdNotEqualTo(
      String libroId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'libroId',
              lower: [],
              upper: [libroId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'libroId',
              lower: [libroId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'libroId',
              lower: [libroId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'libroId',
              lower: [],
              upper: [libroId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> fechaAgregadoEqualTo(
      DateTime fechaAgregado) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fechaAgregado',
        value: [fechaAgregado],
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> fechaAgregadoNotEqualTo(
      DateTime fechaAgregado) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaAgregado',
              lower: [],
              upper: [fechaAgregado],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaAgregado',
              lower: [fechaAgregado],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaAgregado',
              lower: [fechaAgregado],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaAgregado',
              lower: [],
              upper: [fechaAgregado],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> fechaAgregadoGreaterThan(
    DateTime fechaAgregado, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaAgregado',
        lower: [fechaAgregado],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> fechaAgregadoLessThan(
    DateTime fechaAgregado, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaAgregado',
        lower: [],
        upper: [fechaAgregado],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterWhereClause> fechaAgregadoBetween(
    DateTime lowerFechaAgregado,
    DateTime upperFechaAgregado, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaAgregado',
        lower: [lowerFechaAgregado],
        includeLower: includeLower,
        upper: [upperFechaAgregado],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LibroQueryFilter on QueryBuilder<Libro, Libro, QFilterCondition> {
  QueryBuilder<Libro, Libro, QAfterFilterCondition> anioPublicacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'anioPublicacion',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> anioPublicacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'anioPublicacion',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> anioPublicacionEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'anioPublicacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> anioPublicacionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'anioPublicacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> anioPublicacionLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'anioPublicacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> anioPublicacionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'anioPublicacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'autor',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'autor',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'autor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'autor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'autor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'autor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'autor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'autor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'autor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'autor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'autor',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> autorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'autor',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      categoriaIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoriaIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      categoriaIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoriaIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      categoriaIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      categoriaIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoriaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      categoriaIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> categoriaIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> completadoEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completado',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dispositivoActualizador',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dispositivoActualizador',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoActualizador',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispositivoActualizador',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispositivoActualizador',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispositivoActualizador',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispositivoActualizador',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispositivoActualizador',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispositivoActualizador',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispositivoActualizador',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoActualizador',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      dispositivoActualizadorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispositivoActualizador',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'doi',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'doi',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doi',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doi',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doi',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doi',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> doiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doi',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'edicion',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'edicion',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'edicion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'edicion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'edicion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'edicion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'edicion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'edicion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'edicion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'edicion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'edicion',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> edicionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'edicion',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'editorial',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'editorial',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'editorial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'editorial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'editorial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'editorial',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'editorial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'editorial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'editorial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'editorial',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'editorial',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> editorialIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'editorial',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaAgregadoEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaAgregado',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaAgregadoGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaAgregado',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaAgregadoLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaAgregado',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaAgregadoBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaAgregado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaCompletadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaCompletado',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaCompletadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaCompletado',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaCompletadoEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCompletado',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaCompletadoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaCompletado',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaCompletadoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaCompletado',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaCompletadoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaCompletado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaInicioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaInicio',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaInicioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaInicio',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaInicioEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaInicioGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaInicioLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaInicioBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaInicio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaUltimaLecturaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaUltimaLectura',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      fechaUltimaLecturaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaUltimaLectura',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaUltimaLecturaEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaUltimaLectura',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      fechaUltimaLecturaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaUltimaLectura',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaUltimaLecturaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaUltimaLectura',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> fechaUltimaLecturaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaUltimaLectura',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idioma',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idioma',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idioma',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idioma',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idioma',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idioma',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'idioma',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'idioma',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'idioma',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'idioma',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idioma',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> idiomaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'idioma',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isbn',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isbn',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isbn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isbn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isbn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isbn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'isbn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'isbn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'isbn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'isbn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isbn',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> isbnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'isbn',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libroId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libroId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> libroIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lugarPublicacion',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      lugarPublicacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lugarPublicacion',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lugarPublicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lugarPublicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lugarPublicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lugarPublicacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lugarPublicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lugarPublicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lugarPublicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lugarPublicacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> lugarPublicacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lugarPublicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition>
      lugarPublicacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lugarPublicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numeroRevista',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numeroRevista',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroRevista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroRevista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroRevista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroRevista',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'numeroRevista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'numeroRevista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'numeroRevista',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'numeroRevista',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroRevista',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> numeroRevistaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'numeroRevista',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> paginaActualIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paginaActual',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> paginaActualIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paginaActual',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> paginaActualEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paginaActual',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> paginaActualGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paginaActual',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> paginaActualLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paginaActual',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> paginaActualBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paginaActual',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rutaArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rutaArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rutaArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rutaArchivo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rutaArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rutaArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rutaArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rutaArchivo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rutaArchivo',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> rutaArchivoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rutaArchivo',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subtitulo',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subtitulo',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtitulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subtitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subtitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subtitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subtitulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtitulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> subtituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subtitulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoArchivo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipoArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipoArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipoArchivo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipoArchivo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoArchivo',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tipoArchivoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipoArchivo',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> totalPaginasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalPaginas',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> totalPaginasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalPaginas',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> totalPaginasEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPaginas',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> totalPaginasGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPaginas',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> totalPaginasLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPaginas',
        value: value,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> totalPaginasBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPaginas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> ultimoProgresoEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ultimoProgreso',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> ultimoProgresoGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ultimoProgreso',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> ultimoProgresoLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ultimoProgreso',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> ultimoProgresoBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ultimoProgreso',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> usuarioIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'volumen',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'volumen',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'volumen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'volumen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'volumen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'volumen',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'volumen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'volumen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'volumen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'volumen',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'volumen',
        value: '',
      ));
    });
  }

  QueryBuilder<Libro, Libro, QAfterFilterCondition> volumenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'volumen',
        value: '',
      ));
    });
  }
}

extension LibroQueryObject on QueryBuilder<Libro, Libro, QFilterCondition> {}

extension LibroQueryLinks on QueryBuilder<Libro, Libro, QFilterCondition> {}

extension LibroQuerySortBy on QueryBuilder<Libro, Libro, QSortBy> {
  QueryBuilder<Libro, Libro, QAfterSortBy> sortByAnioPublicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anioPublicacion', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByAnioPublicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anioPublicacion', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByAutor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autor', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByAutorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autor', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByCompletado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completado', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByCompletadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completado', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByDispositivoActualizador() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoActualizador', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByDispositivoActualizadorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoActualizador', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByDoi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doi', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByDoiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doi', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByEdicion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edicion', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByEdicionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edicion', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByEditorial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editorial', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByEditorialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editorial', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByFechaAgregado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaAgregado', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByFechaAgregadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaAgregado', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByFechaCompletado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCompletado', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByFechaCompletadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCompletado', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByFechaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByFechaInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByFechaUltimaLectura() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimaLectura', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByFechaUltimaLecturaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimaLectura', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByIdioma() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idioma', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByIdiomaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idioma', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByIsbn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isbn', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByIsbnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isbn', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByLugarPublicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lugarPublicacion', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByLugarPublicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lugarPublicacion', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByNumeroRevista() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroRevista', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByNumeroRevistaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroRevista', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByPaginaActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaActual', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByPaginaActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaActual', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByRutaArchivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaArchivo', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByRutaArchivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaArchivo', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortBySubtitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitulo', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortBySubtituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitulo', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByTipoArchivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoArchivo', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByTipoArchivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoArchivo', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByTotalPaginas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPaginas', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByTotalPaginasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPaginas', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByUltimoProgreso() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoProgreso', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByUltimoProgresoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoProgreso', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByVolumen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volumen', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> sortByVolumenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volumen', Sort.desc);
    });
  }
}

extension LibroQuerySortThenBy on QueryBuilder<Libro, Libro, QSortThenBy> {
  QueryBuilder<Libro, Libro, QAfterSortBy> thenByAnioPublicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anioPublicacion', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByAnioPublicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anioPublicacion', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByAutor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autor', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByAutorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'autor', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByCompletado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completado', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByCompletadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completado', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByDispositivoActualizador() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoActualizador', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByDispositivoActualizadorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoActualizador', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByDoi() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doi', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByDoiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doi', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByEdicion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edicion', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByEdicionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'edicion', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByEditorial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editorial', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByEditorialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'editorial', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByFechaAgregado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaAgregado', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByFechaAgregadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaAgregado', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByFechaCompletado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCompletado', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByFechaCompletadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCompletado', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByFechaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByFechaInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaInicio', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByFechaUltimaLectura() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimaLectura', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByFechaUltimaLecturaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaUltimaLectura', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByIdioma() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idioma', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByIdiomaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idioma', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByIsbn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isbn', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByIsbnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isbn', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByLugarPublicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lugarPublicacion', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByLugarPublicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lugarPublicacion', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByNumeroRevista() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroRevista', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByNumeroRevistaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroRevista', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByPaginaActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaActual', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByPaginaActualDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaActual', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByRutaArchivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaArchivo', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByRutaArchivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaArchivo', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenBySubtitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitulo', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenBySubtituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtitulo', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByTipoArchivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoArchivo', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByTipoArchivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoArchivo', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByTotalPaginas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPaginas', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByTotalPaginasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPaginas', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByUltimoProgreso() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoProgreso', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByUltimoProgresoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoProgreso', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByVolumen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volumen', Sort.asc);
    });
  }

  QueryBuilder<Libro, Libro, QAfterSortBy> thenByVolumenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volumen', Sort.desc);
    });
  }
}

extension LibroQueryWhereDistinct on QueryBuilder<Libro, Libro, QDistinct> {
  QueryBuilder<Libro, Libro, QDistinct> distinctByAnioPublicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'anioPublicacion');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByAutor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'autor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByCategoriaIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoriaIds');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByCompletado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completado');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByDispositivoActualizador(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispositivoActualizador',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByDoi(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doi', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByEdicion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'edicion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByEditorial(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'editorial', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByFechaAgregado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaAgregado');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByFechaCompletado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCompletado');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByFechaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaInicio');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByFechaUltimaLectura() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaUltimaLectura');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByIdioma(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idioma', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByIsbn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isbn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByLibroId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libroId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByLugarPublicacion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lugarPublicacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByNumeroRevista(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroRevista',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByPaginaActual() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paginaActual');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByRutaArchivo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rutaArchivo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctBySubtitulo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtitulo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByTipoArchivo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoArchivo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByTitulo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titulo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByTotalPaginas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPaginas');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByUltimoProgreso() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ultimoProgreso');
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByUsuarioId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Libro, Libro, QDistinct> distinctByVolumen(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'volumen', caseSensitive: caseSensitive);
    });
  }
}

extension LibroQueryProperty on QueryBuilder<Libro, Libro, QQueryProperty> {
  QueryBuilder<Libro, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Libro, int?, QQueryOperations> anioPublicacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'anioPublicacion');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> autorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'autor');
    });
  }

  QueryBuilder<Libro, List<String>, QQueryOperations> categoriaIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoriaIds');
    });
  }

  QueryBuilder<Libro, bool, QQueryOperations> completadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completado');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations>
      dispositivoActualizadorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispositivoActualizador');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> doiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doi');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> edicionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'edicion');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> editorialProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'editorial');
    });
  }

  QueryBuilder<Libro, DateTime, QQueryOperations> fechaAgregadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaAgregado');
    });
  }

  QueryBuilder<Libro, DateTime?, QQueryOperations> fechaCompletadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCompletado');
    });
  }

  QueryBuilder<Libro, DateTime?, QQueryOperations> fechaInicioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaInicio');
    });
  }

  QueryBuilder<Libro, DateTime?, QQueryOperations>
      fechaUltimaLecturaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaUltimaLectura');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> idiomaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idioma');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> isbnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isbn');
    });
  }

  QueryBuilder<Libro, String, QQueryOperations> libroIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libroId');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> lugarPublicacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lugarPublicacion');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> numeroRevistaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroRevista');
    });
  }

  QueryBuilder<Libro, int?, QQueryOperations> paginaActualProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paginaActual');
    });
  }

  QueryBuilder<Libro, String, QQueryOperations> rutaArchivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rutaArchivo');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> subtituloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtitulo');
    });
  }

  QueryBuilder<Libro, String, QQueryOperations> tipoArchivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoArchivo');
    });
  }

  QueryBuilder<Libro, String, QQueryOperations> tituloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titulo');
    });
  }

  QueryBuilder<Libro, int?, QQueryOperations> totalPaginasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPaginas');
    });
  }

  QueryBuilder<Libro, double, QQueryOperations> ultimoProgresoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ultimoProgreso');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }

  QueryBuilder<Libro, String, QQueryOperations> usuarioIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioId');
    });
  }

  QueryBuilder<Libro, String?, QQueryOperations> volumenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'volumen');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCategoriaCollection on Isar {
  IsarCollection<Categoria> get categorias => this.collection();
}

const CategoriaSchema = CollectionSchema(
  name: r'Categoria',
  id: 8566002696729659875,
  properties: {
    r'categoriaId': PropertySchema(
      id: 0,
      name: r'categoriaId',
      type: IsarType.string,
    ),
    r'categoriaPadreId': PropertySchema(
      id: 1,
      name: r'categoriaPadreId',
      type: IsarType.string,
    ),
    r'color': PropertySchema(
      id: 2,
      name: r'color',
      type: IsarType.string,
    ),
    r'descripcion': PropertySchema(
      id: 3,
      name: r'descripcion',
      type: IsarType.string,
    ),
    r'fechaCreacion': PropertySchema(
      id: 4,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'icono': PropertySchema(
      id: 5,
      name: r'icono',
      type: IsarType.string,
    ),
    r'nombre': PropertySchema(
      id: 6,
      name: r'nombre',
      type: IsarType.string,
    ),
    r'usuarioId': PropertySchema(
      id: 7,
      name: r'usuarioId',
      type: IsarType.string,
    )
  },
  estimateSize: _categoriaEstimateSize,
  serialize: _categoriaSerialize,
  deserialize: _categoriaDeserialize,
  deserializeProp: _categoriaDeserializeProp,
  idName: r'id',
  indexes: {
    r'categoriaId': IndexSchema(
      id: 988530590553896478,
      name: r'categoriaId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'categoriaId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'fechaCreacion': IndexSchema(
      id: 3471812336142411217,
      name: r'fechaCreacion',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fechaCreacion',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _categoriaGetId,
  getLinks: _categoriaGetLinks,
  attach: _categoriaAttach,
  version: '3.1.0+1',
);

int _categoriaEstimateSize(
  Categoria object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.categoriaId.length * 3;
  {
    final value = object.categoriaPadreId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.color;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.descripcion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.icono;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.nombre.length * 3;
  bytesCount += 3 + object.usuarioId.length * 3;
  return bytesCount;
}

void _categoriaSerialize(
  Categoria object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.categoriaId);
  writer.writeString(offsets[1], object.categoriaPadreId);
  writer.writeString(offsets[2], object.color);
  writer.writeString(offsets[3], object.descripcion);
  writer.writeDateTime(offsets[4], object.fechaCreacion);
  writer.writeString(offsets[5], object.icono);
  writer.writeString(offsets[6], object.nombre);
  writer.writeString(offsets[7], object.usuarioId);
}

Categoria _categoriaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Categoria();
  object.categoriaId = reader.readString(offsets[0]);
  object.categoriaPadreId = reader.readStringOrNull(offsets[1]);
  object.color = reader.readStringOrNull(offsets[2]);
  object.descripcion = reader.readStringOrNull(offsets[3]);
  object.fechaCreacion = reader.readDateTime(offsets[4]);
  object.icono = reader.readStringOrNull(offsets[5]);
  object.id = id;
  object.nombre = reader.readString(offsets[6]);
  object.usuarioId = reader.readString(offsets[7]);
  return object;
}

P _categoriaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _categoriaGetId(Categoria object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _categoriaGetLinks(Categoria object) {
  return [];
}

void _categoriaAttach(IsarCollection<dynamic> col, Id id, Categoria object) {
  object.id = id;
}

extension CategoriaByIndex on IsarCollection<Categoria> {
  Future<Categoria?> getByCategoriaId(String categoriaId) {
    return getByIndex(r'categoriaId', [categoriaId]);
  }

  Categoria? getByCategoriaIdSync(String categoriaId) {
    return getByIndexSync(r'categoriaId', [categoriaId]);
  }

  Future<bool> deleteByCategoriaId(String categoriaId) {
    return deleteByIndex(r'categoriaId', [categoriaId]);
  }

  bool deleteByCategoriaIdSync(String categoriaId) {
    return deleteByIndexSync(r'categoriaId', [categoriaId]);
  }

  Future<List<Categoria?>> getAllByCategoriaId(List<String> categoriaIdValues) {
    final values = categoriaIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'categoriaId', values);
  }

  List<Categoria?> getAllByCategoriaIdSync(List<String> categoriaIdValues) {
    final values = categoriaIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'categoriaId', values);
  }

  Future<int> deleteAllByCategoriaId(List<String> categoriaIdValues) {
    final values = categoriaIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'categoriaId', values);
  }

  int deleteAllByCategoriaIdSync(List<String> categoriaIdValues) {
    final values = categoriaIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'categoriaId', values);
  }

  Future<Id> putByCategoriaId(Categoria object) {
    return putByIndex(r'categoriaId', object);
  }

  Id putByCategoriaIdSync(Categoria object, {bool saveLinks = true}) {
    return putByIndexSync(r'categoriaId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCategoriaId(List<Categoria> objects) {
    return putAllByIndex(r'categoriaId', objects);
  }

  List<Id> putAllByCategoriaIdSync(List<Categoria> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'categoriaId', objects, saveLinks: saveLinks);
  }
}

extension CategoriaQueryWhereSort
    on QueryBuilder<Categoria, Categoria, QWhere> {
  QueryBuilder<Categoria, Categoria, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhere> anyFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fechaCreacion'),
      );
    });
  }
}

extension CategoriaQueryWhere
    on QueryBuilder<Categoria, Categoria, QWhereClause> {
  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> categoriaIdEqualTo(
      String categoriaId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'categoriaId',
        value: [categoriaId],
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> categoriaIdNotEqualTo(
      String categoriaId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoriaId',
              lower: [],
              upper: [categoriaId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoriaId',
              lower: [categoriaId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoriaId',
              lower: [categoriaId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'categoriaId',
              lower: [],
              upper: [categoriaId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> fechaCreacionEqualTo(
      DateTime fechaCreacion) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fechaCreacion',
        value: [fechaCreacion],
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> fechaCreacionNotEqualTo(
      DateTime fechaCreacion) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [],
              upper: [fechaCreacion],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [fechaCreacion],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [fechaCreacion],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [],
              upper: [fechaCreacion],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause>
      fechaCreacionGreaterThan(
    DateTime fechaCreacion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaCreacion',
        lower: [fechaCreacion],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> fechaCreacionLessThan(
    DateTime fechaCreacion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaCreacion',
        lower: [],
        upper: [fechaCreacion],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> fechaCreacionBetween(
    DateTime lowerFechaCreacion,
    DateTime upperFechaCreacion, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaCreacion',
        lower: [lowerFechaCreacion],
        includeLower: includeLower,
        upper: [upperFechaCreacion],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CategoriaQueryFilter
    on QueryBuilder<Categoria, Categoria, QFilterCondition> {
  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> categoriaIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoriaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> categoriaIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoriaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> categoriaIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoriaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoriaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> categoriaIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoriaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> categoriaIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoriaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> categoriaIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoriaId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaId',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoriaId',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoriaPadreId',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoriaPadreId',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaPadreId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoriaPadreId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoriaPadreId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoriaPadreId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoriaPadreId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoriaPadreId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoriaPadreId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoriaPadreId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaPadreId',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      categoriaPadreIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoriaPadreId',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'color',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> colorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      descripcionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      descripcionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descripcion',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> descripcionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      descripcionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> descripcionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> descripcionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descripcion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      descripcionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> descripcionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> descripcionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descripcion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> descripcionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descripcion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      descripcionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      descripcionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descripcion',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      fechaCreacionEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      fechaCreacionGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      fechaCreacionLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      fechaCreacionBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaCreacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'icono',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'icono',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icono',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'icono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'icono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'icono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'icono',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icono',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> iconoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'icono',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuarioIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      usuarioIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuarioIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuarioIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuarioIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuarioIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuarioIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuarioIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuarioIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      usuarioIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioId',
        value: '',
      ));
    });
  }
}

extension CategoriaQueryObject
    on QueryBuilder<Categoria, Categoria, QFilterCondition> {}

extension CategoriaQueryLinks
    on QueryBuilder<Categoria, Categoria, QFilterCondition> {}

extension CategoriaQuerySortBy on QueryBuilder<Categoria, Categoria, QSortBy> {
  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByCategoriaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaId', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByCategoriaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaId', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByCategoriaPadreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaPadreId', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy>
      sortByCategoriaPadreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaPadreId', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByIcono() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icono', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByIconoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icono', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension CategoriaQuerySortThenBy
    on QueryBuilder<Categoria, Categoria, QSortThenBy> {
  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByCategoriaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaId', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByCategoriaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaId', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByCategoriaPadreId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaPadreId', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy>
      thenByCategoriaPadreIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoriaPadreId', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByDescripcion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByDescripcionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descripcion', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByIcono() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icono', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByIconoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icono', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension CategoriaQueryWhereDistinct
    on QueryBuilder<Categoria, Categoria, QDistinct> {
  QueryBuilder<Categoria, Categoria, QDistinct> distinctByCategoriaId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoriaId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByCategoriaPadreId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoriaPadreId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'color', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByDescripcion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descripcion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByIcono(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icono', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByUsuarioId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioId', caseSensitive: caseSensitive);
    });
  }
}

extension CategoriaQueryProperty
    on QueryBuilder<Categoria, Categoria, QQueryProperty> {
  QueryBuilder<Categoria, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Categoria, String, QQueryOperations> categoriaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoriaId');
    });
  }

  QueryBuilder<Categoria, String?, QQueryOperations>
      categoriaPadreIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoriaPadreId');
    });
  }

  QueryBuilder<Categoria, String?, QQueryOperations> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'color');
    });
  }

  QueryBuilder<Categoria, String?, QQueryOperations> descripcionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descripcion');
    });
  }

  QueryBuilder<Categoria, DateTime, QQueryOperations> fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<Categoria, String?, QQueryOperations> iconoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icono');
    });
  }

  QueryBuilder<Categoria, String, QQueryOperations> nombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre');
    });
  }

  QueryBuilder<Categoria, String, QQueryOperations> usuarioIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProgresoCommitCollection on Isar {
  IsarCollection<ProgresoCommit> get progresoCommits => this.collection();
}

const ProgresoCommitSchema = CollectionSchema(
  name: r'ProgresoCommit',
  id: 2716887892170561666,
  properties: {
    r'commitId': PropertySchema(
      id: 0,
      name: r'commitId',
      type: IsarType.string,
    ),
    r'dispositivoId': PropertySchema(
      id: 1,
      name: r'dispositivoId',
      type: IsarType.string,
    ),
    r'fecha': PropertySchema(
      id: 2,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'hashCommit': PropertySchema(
      id: 3,
      name: r'hashCommit',
      type: IsarType.string,
    ),
    r'libroId': PropertySchema(
      id: 4,
      name: r'libroId',
      type: IsarType.string,
    ),
    r'nota': PropertySchema(
      id: 5,
      name: r'nota',
      type: IsarType.string,
    ),
    r'paginaAnterior': PropertySchema(
      id: 6,
      name: r'paginaAnterior',
      type: IsarType.long,
    ),
    r'paginaNueva': PropertySchema(
      id: 7,
      name: r'paginaNueva',
      type: IsarType.long,
    ),
    r'progresoAnterior': PropertySchema(
      id: 8,
      name: r'progresoAnterior',
      type: IsarType.double,
    ),
    r'progresoNuevo': PropertySchema(
      id: 9,
      name: r'progresoNuevo',
      type: IsarType.double,
    ),
    r'tiempoLecturaMinutos': PropertySchema(
      id: 10,
      name: r'tiempoLecturaMinutos',
      type: IsarType.long,
    ),
    r'usuarioId': PropertySchema(
      id: 11,
      name: r'usuarioId',
      type: IsarType.string,
    )
  },
  estimateSize: _progresoCommitEstimateSize,
  serialize: _progresoCommitSerialize,
  deserialize: _progresoCommitDeserialize,
  deserializeProp: _progresoCommitDeserializeProp,
  idName: r'id',
  indexes: {
    r'fecha': IndexSchema(
      id: -5395179286312083551,
      name: r'fecha',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fecha',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _progresoCommitGetId,
  getLinks: _progresoCommitGetLinks,
  attach: _progresoCommitAttach,
  version: '3.1.0+1',
);

int _progresoCommitEstimateSize(
  ProgresoCommit object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.commitId.length * 3;
  bytesCount += 3 + object.dispositivoId.length * 3;
  {
    final value = object.hashCommit;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.libroId.length * 3;
  {
    final value = object.nota;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.usuarioId.length * 3;
  return bytesCount;
}

void _progresoCommitSerialize(
  ProgresoCommit object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.commitId);
  writer.writeString(offsets[1], object.dispositivoId);
  writer.writeDateTime(offsets[2], object.fecha);
  writer.writeString(offsets[3], object.hashCommit);
  writer.writeString(offsets[4], object.libroId);
  writer.writeString(offsets[5], object.nota);
  writer.writeLong(offsets[6], object.paginaAnterior);
  writer.writeLong(offsets[7], object.paginaNueva);
  writer.writeDouble(offsets[8], object.progresoAnterior);
  writer.writeDouble(offsets[9], object.progresoNuevo);
  writer.writeLong(offsets[10], object.tiempoLecturaMinutos);
  writer.writeString(offsets[11], object.usuarioId);
}

ProgresoCommit _progresoCommitDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProgresoCommit();
  object.commitId = reader.readString(offsets[0]);
  object.dispositivoId = reader.readString(offsets[1]);
  object.fecha = reader.readDateTime(offsets[2]);
  object.hashCommit = reader.readStringOrNull(offsets[3]);
  object.id = id;
  object.libroId = reader.readString(offsets[4]);
  object.nota = reader.readStringOrNull(offsets[5]);
  object.paginaAnterior = reader.readLongOrNull(offsets[6]);
  object.paginaNueva = reader.readLongOrNull(offsets[7]);
  object.progresoAnterior = reader.readDouble(offsets[8]);
  object.progresoNuevo = reader.readDouble(offsets[9]);
  object.tiempoLecturaMinutos = reader.readLongOrNull(offsets[10]);
  object.usuarioId = reader.readString(offsets[11]);
  return object;
}

P _progresoCommitDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _progresoCommitGetId(ProgresoCommit object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _progresoCommitGetLinks(ProgresoCommit object) {
  return [];
}

void _progresoCommitAttach(
    IsarCollection<dynamic> col, Id id, ProgresoCommit object) {
  object.id = id;
}

extension ProgresoCommitQueryWhereSort
    on QueryBuilder<ProgresoCommit, ProgresoCommit, QWhere> {
  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhere> anyFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fecha'),
      );
    });
  }
}

extension ProgresoCommitQueryWhere
    on QueryBuilder<ProgresoCommit, ProgresoCommit, QWhereClause> {
  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause> fechaEqualTo(
      DateTime fecha) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fecha',
        value: [fecha],
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause>
      fechaNotEqualTo(DateTime fecha) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [],
              upper: [fecha],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [fecha],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [fecha],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [],
              upper: [fecha],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause>
      fechaGreaterThan(
    DateTime fecha, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [fecha],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause> fechaLessThan(
    DateTime fecha, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [],
        upper: [fecha],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterWhereClause> fechaBetween(
    DateTime lowerFecha,
    DateTime upperFecha, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [lowerFecha],
        includeLower: includeLower,
        upper: [upperFecha],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ProgresoCommitQueryFilter
    on QueryBuilder<ProgresoCommit, ProgresoCommit, QFilterCondition> {
  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commitId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commitId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commitId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commitId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'commitId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'commitId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'commitId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'commitId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commitId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      commitIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'commitId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispositivoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispositivoId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      dispositivoIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispositivoId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      fechaEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      fechaGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      fechaLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      fechaBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hashCommit',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hashCommit',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCommit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCommit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCommit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCommit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hashCommit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hashCommit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hashCommit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hashCommit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCommit',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      hashCommitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hashCommit',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libroId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libroId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      libroIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nota',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nota',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nota',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nota',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nota',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nota',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nota',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nota',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nota',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nota',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nota',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      notaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nota',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaAnteriorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paginaAnterior',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaAnteriorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paginaAnterior',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaAnteriorEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paginaAnterior',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaAnteriorGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paginaAnterior',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaAnteriorLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paginaAnterior',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaAnteriorBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paginaAnterior',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaNuevaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paginaNueva',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaNuevaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paginaNueva',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaNuevaEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paginaNueva',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaNuevaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paginaNueva',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaNuevaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paginaNueva',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      paginaNuevaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paginaNueva',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      progresoAnteriorEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progresoAnterior',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      progresoAnteriorGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progresoAnterior',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      progresoAnteriorLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progresoAnterior',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      progresoAnteriorBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progresoAnterior',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      progresoNuevoEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progresoNuevo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      progresoNuevoGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progresoNuevo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      progresoNuevoLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progresoNuevo',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      progresoNuevoBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progresoNuevo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      tiempoLecturaMinutosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tiempoLecturaMinutos',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      tiempoLecturaMinutosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tiempoLecturaMinutos',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      tiempoLecturaMinutosEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tiempoLecturaMinutos',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      tiempoLecturaMinutosGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tiempoLecturaMinutos',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      tiempoLecturaMinutosLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tiempoLecturaMinutos',
        value: value,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      tiempoLecturaMinutosBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tiempoLecturaMinutos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterFilterCondition>
      usuarioIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioId',
        value: '',
      ));
    });
  }
}

extension ProgresoCommitQueryObject
    on QueryBuilder<ProgresoCommit, ProgresoCommit, QFilterCondition> {}

extension ProgresoCommitQueryLinks
    on QueryBuilder<ProgresoCommit, ProgresoCommit, QFilterCondition> {}

extension ProgresoCommitQuerySortBy
    on QueryBuilder<ProgresoCommit, ProgresoCommit, QSortBy> {
  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> sortByCommitId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commitId', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByCommitIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commitId', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByDispositivoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByDispositivoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByHashCommit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCommit', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByHashCommitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCommit', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> sortByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> sortByNota() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nota', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> sortByNotaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nota', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByPaginaAnterior() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaAnterior', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByPaginaAnteriorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaAnterior', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByPaginaNueva() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaNueva', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByPaginaNuevaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaNueva', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByProgresoAnterior() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoAnterior', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByProgresoAnteriorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoAnterior', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByProgresoNuevo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoNuevo', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByProgresoNuevoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoNuevo', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByTiempoLecturaMinutos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiempoLecturaMinutos', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByTiempoLecturaMinutosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiempoLecturaMinutos', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> sortByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      sortByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension ProgresoCommitQuerySortThenBy
    on QueryBuilder<ProgresoCommit, ProgresoCommit, QSortThenBy> {
  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> thenByCommitId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commitId', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByCommitIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commitId', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByDispositivoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByDispositivoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByHashCommit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCommit', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByHashCommitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCommit', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> thenByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> thenByNota() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nota', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> thenByNotaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nota', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByPaginaAnterior() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaAnterior', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByPaginaAnteriorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaAnterior', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByPaginaNueva() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaNueva', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByPaginaNuevaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaNueva', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByProgresoAnterior() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoAnterior', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByProgresoAnteriorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoAnterior', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByProgresoNuevo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoNuevo', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByProgresoNuevoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoNuevo', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByTiempoLecturaMinutos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiempoLecturaMinutos', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByTiempoLecturaMinutosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiempoLecturaMinutos', Sort.desc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy> thenByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QAfterSortBy>
      thenByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension ProgresoCommitQueryWhereDistinct
    on QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct> {
  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct> distinctByCommitId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commitId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct>
      distinctByDispositivoId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispositivoId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct> distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct> distinctByHashCommit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCommit', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct> distinctByLibroId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libroId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct> distinctByNota(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nota', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct>
      distinctByPaginaAnterior() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paginaAnterior');
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct>
      distinctByPaginaNueva() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paginaNueva');
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct>
      distinctByProgresoAnterior() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progresoAnterior');
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct>
      distinctByProgresoNuevo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progresoNuevo');
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct>
      distinctByTiempoLecturaMinutos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tiempoLecturaMinutos');
    });
  }

  QueryBuilder<ProgresoCommit, ProgresoCommit, QDistinct> distinctByUsuarioId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioId', caseSensitive: caseSensitive);
    });
  }
}

extension ProgresoCommitQueryProperty
    on QueryBuilder<ProgresoCommit, ProgresoCommit, QQueryProperty> {
  QueryBuilder<ProgresoCommit, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProgresoCommit, String, QQueryOperations> commitIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commitId');
    });
  }

  QueryBuilder<ProgresoCommit, String, QQueryOperations>
      dispositivoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispositivoId');
    });
  }

  QueryBuilder<ProgresoCommit, DateTime, QQueryOperations> fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<ProgresoCommit, String?, QQueryOperations> hashCommitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCommit');
    });
  }

  QueryBuilder<ProgresoCommit, String, QQueryOperations> libroIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libroId');
    });
  }

  QueryBuilder<ProgresoCommit, String?, QQueryOperations> notaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nota');
    });
  }

  QueryBuilder<ProgresoCommit, int?, QQueryOperations>
      paginaAnteriorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paginaAnterior');
    });
  }

  QueryBuilder<ProgresoCommit, int?, QQueryOperations> paginaNuevaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paginaNueva');
    });
  }

  QueryBuilder<ProgresoCommit, double, QQueryOperations>
      progresoAnteriorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progresoAnterior');
    });
  }

  QueryBuilder<ProgresoCommit, double, QQueryOperations>
      progresoNuevoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progresoNuevo');
    });
  }

  QueryBuilder<ProgresoCommit, int?, QQueryOperations>
      tiempoLecturaMinutosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tiempoLecturaMinutos');
    });
  }

  QueryBuilder<ProgresoCommit, String, QQueryOperations> usuarioIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCitaCollection on Isar {
  IsarCollection<Cita> get citas => this.collection();
}

const CitaSchema = CollectionSchema(
  name: r'Cita',
  id: 3237051834037128247,
  properties: {
    r'capitulo': PropertySchema(
      id: 0,
      name: r'capitulo',
      type: IsarType.string,
    ),
    r'categoriaIds': PropertySchema(
      id: 1,
      name: r'categoriaIds',
      type: IsarType.stringList,
    ),
    r'citaFormateada': PropertySchema(
      id: 2,
      name: r'citaFormateada',
      type: IsarType.string,
    ),
    r'citaId': PropertySchema(
      id: 3,
      name: r'citaId',
      type: IsarType.string,
    ),
    r'fechaCreacion': PropertySchema(
      id: 4,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'fechaModificacion': PropertySchema(
      id: 5,
      name: r'fechaModificacion',
      type: IsarType.dateTime,
    ),
    r'formatoPreferido': PropertySchema(
      id: 6,
      name: r'formatoPreferido',
      type: IsarType.string,
    ),
    r'libroId': PropertySchema(
      id: 7,
      name: r'libroId',
      type: IsarType.string,
    ),
    r'notaPersonal': PropertySchema(
      id: 8,
      name: r'notaPersonal',
      type: IsarType.string,
    ),
    r'paginaFin': PropertySchema(
      id: 9,
      name: r'paginaFin',
      type: IsarType.long,
    ),
    r'paginaInicio': PropertySchema(
      id: 10,
      name: r'paginaInicio',
      type: IsarType.long,
    ),
    r'rutaImagen': PropertySchema(
      id: 11,
      name: r'rutaImagen',
      type: IsarType.string,
    ),
    r'seccion': PropertySchema(
      id: 12,
      name: r'seccion',
      type: IsarType.string,
    ),
    r'tags': PropertySchema(
      id: 13,
      name: r'tags',
      type: IsarType.stringList,
    ),
    r'texto': PropertySchema(
      id: 14,
      name: r'texto',
      type: IsarType.string,
    ),
    r'tipo': PropertySchema(
      id: 15,
      name: r'tipo',
      type: IsarType.string,
    ),
    r'usuarioId': PropertySchema(
      id: 16,
      name: r'usuarioId',
      type: IsarType.string,
    )
  },
  estimateSize: _citaEstimateSize,
  serialize: _citaSerialize,
  deserialize: _citaDeserialize,
  deserializeProp: _citaDeserializeProp,
  idName: r'id',
  indexes: {
    r'citaId': IndexSchema(
      id: 3123360369587569422,
      name: r'citaId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'citaId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'fechaCreacion': IndexSchema(
      id: 3471812336142411217,
      name: r'fechaCreacion',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fechaCreacion',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _citaGetId,
  getLinks: _citaGetLinks,
  attach: _citaAttach,
  version: '3.1.0+1',
);

int _citaEstimateSize(
  Cita object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.capitulo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.categoriaIds.length * 3;
  {
    for (var i = 0; i < object.categoriaIds.length; i++) {
      final value = object.categoriaIds[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.citaFormateada;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.citaId.length * 3;
  {
    final value = object.formatoPreferido;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.libroId.length * 3;
  {
    final value = object.notaPersonal;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rutaImagen;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.seccion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tags.length * 3;
  {
    for (var i = 0; i < object.tags.length; i++) {
      final value = object.tags[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.texto.length * 3;
  bytesCount += 3 + object.tipo.length * 3;
  bytesCount += 3 + object.usuarioId.length * 3;
  return bytesCount;
}

void _citaSerialize(
  Cita object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.capitulo);
  writer.writeStringList(offsets[1], object.categoriaIds);
  writer.writeString(offsets[2], object.citaFormateada);
  writer.writeString(offsets[3], object.citaId);
  writer.writeDateTime(offsets[4], object.fechaCreacion);
  writer.writeDateTime(offsets[5], object.fechaModificacion);
  writer.writeString(offsets[6], object.formatoPreferido);
  writer.writeString(offsets[7], object.libroId);
  writer.writeString(offsets[8], object.notaPersonal);
  writer.writeLong(offsets[9], object.paginaFin);
  writer.writeLong(offsets[10], object.paginaInicio);
  writer.writeString(offsets[11], object.rutaImagen);
  writer.writeString(offsets[12], object.seccion);
  writer.writeStringList(offsets[13], object.tags);
  writer.writeString(offsets[14], object.texto);
  writer.writeString(offsets[15], object.tipo);
  writer.writeString(offsets[16], object.usuarioId);
}

Cita _citaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Cita();
  object.capitulo = reader.readStringOrNull(offsets[0]);
  object.categoriaIds = reader.readStringList(offsets[1]) ?? [];
  object.citaFormateada = reader.readStringOrNull(offsets[2]);
  object.citaId = reader.readString(offsets[3]);
  object.fechaCreacion = reader.readDateTime(offsets[4]);
  object.fechaModificacion = reader.readDateTimeOrNull(offsets[5]);
  object.formatoPreferido = reader.readStringOrNull(offsets[6]);
  object.id = id;
  object.libroId = reader.readString(offsets[7]);
  object.notaPersonal = reader.readStringOrNull(offsets[8]);
  object.paginaFin = reader.readLongOrNull(offsets[9]);
  object.paginaInicio = reader.readLongOrNull(offsets[10]);
  object.rutaImagen = reader.readStringOrNull(offsets[11]);
  object.seccion = reader.readStringOrNull(offsets[12]);
  object.tags = reader.readStringList(offsets[13]) ?? [];
  object.texto = reader.readString(offsets[14]);
  object.tipo = reader.readString(offsets[15]);
  object.usuarioId = reader.readString(offsets[16]);
  return object;
}

P _citaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringList(offset) ?? []) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _citaGetId(Cita object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _citaGetLinks(Cita object) {
  return [];
}

void _citaAttach(IsarCollection<dynamic> col, Id id, Cita object) {
  object.id = id;
}

extension CitaByIndex on IsarCollection<Cita> {
  Future<Cita?> getByCitaId(String citaId) {
    return getByIndex(r'citaId', [citaId]);
  }

  Cita? getByCitaIdSync(String citaId) {
    return getByIndexSync(r'citaId', [citaId]);
  }

  Future<bool> deleteByCitaId(String citaId) {
    return deleteByIndex(r'citaId', [citaId]);
  }

  bool deleteByCitaIdSync(String citaId) {
    return deleteByIndexSync(r'citaId', [citaId]);
  }

  Future<List<Cita?>> getAllByCitaId(List<String> citaIdValues) {
    final values = citaIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'citaId', values);
  }

  List<Cita?> getAllByCitaIdSync(List<String> citaIdValues) {
    final values = citaIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'citaId', values);
  }

  Future<int> deleteAllByCitaId(List<String> citaIdValues) {
    final values = citaIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'citaId', values);
  }

  int deleteAllByCitaIdSync(List<String> citaIdValues) {
    final values = citaIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'citaId', values);
  }

  Future<Id> putByCitaId(Cita object) {
    return putByIndex(r'citaId', object);
  }

  Id putByCitaIdSync(Cita object, {bool saveLinks = true}) {
    return putByIndexSync(r'citaId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCitaId(List<Cita> objects) {
    return putAllByIndex(r'citaId', objects);
  }

  List<Id> putAllByCitaIdSync(List<Cita> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'citaId', objects, saveLinks: saveLinks);
  }
}

extension CitaQueryWhereSort on QueryBuilder<Cita, Cita, QWhere> {
  QueryBuilder<Cita, Cita, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhere> anyFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fechaCreacion'),
      );
    });
  }
}

extension CitaQueryWhere on QueryBuilder<Cita, Cita, QWhereClause> {
  QueryBuilder<Cita, Cita, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> citaIdEqualTo(String citaId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'citaId',
        value: [citaId],
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> citaIdNotEqualTo(String citaId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'citaId',
              lower: [],
              upper: [citaId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'citaId',
              lower: [citaId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'citaId',
              lower: [citaId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'citaId',
              lower: [],
              upper: [citaId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> fechaCreacionEqualTo(
      DateTime fechaCreacion) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fechaCreacion',
        value: [fechaCreacion],
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> fechaCreacionNotEqualTo(
      DateTime fechaCreacion) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [],
              upper: [fechaCreacion],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [fechaCreacion],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [fechaCreacion],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [],
              upper: [fechaCreacion],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> fechaCreacionGreaterThan(
    DateTime fechaCreacion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaCreacion',
        lower: [fechaCreacion],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> fechaCreacionLessThan(
    DateTime fechaCreacion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaCreacion',
        lower: [],
        upper: [fechaCreacion],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterWhereClause> fechaCreacionBetween(
    DateTime lowerFechaCreacion,
    DateTime upperFechaCreacion, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaCreacion',
        lower: [lowerFechaCreacion],
        includeLower: includeLower,
        upper: [upperFechaCreacion],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CitaQueryFilter on QueryBuilder<Cita, Cita, QFilterCondition> {
  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'capitulo',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'capitulo',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'capitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'capitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'capitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'capitulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'capitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'capitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'capitulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'capitulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'capitulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> capituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'capitulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition>
      categoriaIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoriaIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoriaIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition>
      categoriaIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoriaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> categoriaIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'citaFormateada',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'citaFormateada',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'citaFormateada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'citaFormateada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'citaFormateada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'citaFormateada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'citaFormateada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'citaFormateada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'citaFormateada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'citaFormateada',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'citaFormateada',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaFormateadaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'citaFormateada',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'citaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'citaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'citaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'citaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'citaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'citaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'citaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'citaId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'citaId',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> citaIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'citaId',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaCreacionEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaCreacionGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaCreacionLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaCreacionBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaCreacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaModificacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaModificacion',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaModificacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaModificacion',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaModificacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaModificacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaModificacionGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaModificacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaModificacionLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaModificacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> fechaModificacionBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaModificacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'formatoPreferido',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'formatoPreferido',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formatoPreferido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formatoPreferido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formatoPreferido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formatoPreferido',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formatoPreferido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formatoPreferido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formatoPreferido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formatoPreferido',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formatoPreferido',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> formatoPreferidoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formatoPreferido',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libroId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libroId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> libroIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notaPersonal',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notaPersonal',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notaPersonal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notaPersonal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notaPersonal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notaPersonal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notaPersonal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notaPersonal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notaPersonal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notaPersonal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notaPersonal',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> notaPersonalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notaPersonal',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaFinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paginaFin',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaFinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paginaFin',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaFinEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paginaFin',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaFinGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paginaFin',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaFinLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paginaFin',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaFinBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paginaFin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaInicioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paginaInicio',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaInicioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paginaInicio',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaInicioEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paginaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaInicioGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paginaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaInicioLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paginaInicio',
        value: value,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> paginaInicioBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paginaInicio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rutaImagen',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rutaImagen',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rutaImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rutaImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rutaImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rutaImagen',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rutaImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rutaImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rutaImagen',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rutaImagen',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rutaImagen',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> rutaImagenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rutaImagen',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seccion',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seccion',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seccion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seccion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seccion',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> seccionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seccion',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'texto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'texto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'texto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'texto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'texto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'texto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'texto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'texto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'texto',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> textoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'texto',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> tipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<Cita, Cita, QAfterFilterCondition> usuarioIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioId',
        value: '',
      ));
    });
  }
}

extension CitaQueryObject on QueryBuilder<Cita, Cita, QFilterCondition> {}

extension CitaQueryLinks on QueryBuilder<Cita, Cita, QFilterCondition> {}

extension CitaQuerySortBy on QueryBuilder<Cita, Cita, QSortBy> {
  QueryBuilder<Cita, Cita, QAfterSortBy> sortByCapitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'capitulo', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByCapituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'capitulo', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByCitaFormateada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citaFormateada', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByCitaFormateadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citaFormateada', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByCitaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citaId', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByCitaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citaId', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByFechaModificacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaModificacion', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByFechaModificacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaModificacion', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByFormatoPreferido() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formatoPreferido', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByFormatoPreferidoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formatoPreferido', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByNotaPersonal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notaPersonal', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByNotaPersonalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notaPersonal', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByPaginaFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaFin', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByPaginaFinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaFin', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByPaginaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaInicio', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByPaginaInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaInicio', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByRutaImagen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaImagen', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByRutaImagenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaImagen', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortBySeccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seccion', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortBySeccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seccion', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByTexto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'texto', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByTextoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'texto', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> sortByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension CitaQuerySortThenBy on QueryBuilder<Cita, Cita, QSortThenBy> {
  QueryBuilder<Cita, Cita, QAfterSortBy> thenByCapitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'capitulo', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByCapituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'capitulo', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByCitaFormateada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citaFormateada', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByCitaFormateadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citaFormateada', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByCitaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citaId', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByCitaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citaId', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByFechaModificacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaModificacion', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByFechaModificacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaModificacion', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByFormatoPreferido() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formatoPreferido', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByFormatoPreferidoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formatoPreferido', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByNotaPersonal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notaPersonal', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByNotaPersonalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notaPersonal', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByPaginaFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaFin', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByPaginaFinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaFin', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByPaginaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaInicio', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByPaginaInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginaInicio', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByRutaImagen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaImagen', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByRutaImagenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rutaImagen', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenBySeccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seccion', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenBySeccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seccion', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByTexto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'texto', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByTextoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'texto', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipo', Sort.desc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Cita, Cita, QAfterSortBy> thenByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension CitaQueryWhereDistinct on QueryBuilder<Cita, Cita, QDistinct> {
  QueryBuilder<Cita, Cita, QDistinct> distinctByCapitulo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'capitulo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByCategoriaIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoriaIds');
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByCitaFormateada(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'citaFormateada',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByCitaId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'citaId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByFechaModificacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaModificacion');
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByFormatoPreferido(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formatoPreferido',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByLibroId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libroId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByNotaPersonal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notaPersonal', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByPaginaFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paginaFin');
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByPaginaInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paginaInicio');
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByRutaImagen(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rutaImagen', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctBySeccion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seccion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tags');
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByTexto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'texto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByTipo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Cita, Cita, QDistinct> distinctByUsuarioId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioId', caseSensitive: caseSensitive);
    });
  }
}

extension CitaQueryProperty on QueryBuilder<Cita, Cita, QQueryProperty> {
  QueryBuilder<Cita, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Cita, String?, QQueryOperations> capituloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'capitulo');
    });
  }

  QueryBuilder<Cita, List<String>, QQueryOperations> categoriaIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoriaIds');
    });
  }

  QueryBuilder<Cita, String?, QQueryOperations> citaFormateadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'citaFormateada');
    });
  }

  QueryBuilder<Cita, String, QQueryOperations> citaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'citaId');
    });
  }

  QueryBuilder<Cita, DateTime, QQueryOperations> fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<Cita, DateTime?, QQueryOperations> fechaModificacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaModificacion');
    });
  }

  QueryBuilder<Cita, String?, QQueryOperations> formatoPreferidoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formatoPreferido');
    });
  }

  QueryBuilder<Cita, String, QQueryOperations> libroIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libroId');
    });
  }

  QueryBuilder<Cita, String?, QQueryOperations> notaPersonalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notaPersonal');
    });
  }

  QueryBuilder<Cita, int?, QQueryOperations> paginaFinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paginaFin');
    });
  }

  QueryBuilder<Cita, int?, QQueryOperations> paginaInicioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paginaInicio');
    });
  }

  QueryBuilder<Cita, String?, QQueryOperations> rutaImagenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rutaImagen');
    });
  }

  QueryBuilder<Cita, String?, QQueryOperations> seccionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seccion');
    });
  }

  QueryBuilder<Cita, List<String>, QQueryOperations> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }

  QueryBuilder<Cita, String, QQueryOperations> textoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'texto');
    });
  }

  QueryBuilder<Cita, String, QQueryOperations> tipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipo');
    });
  }

  QueryBuilder<Cita, String, QQueryOperations> usuarioIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNotaCollection on Isar {
  IsarCollection<Nota> get notas => this.collection();
}

const NotaSchema = CollectionSchema(
  name: r'Nota',
  id: -7324561704017065997,
  properties: {
    r'categoriaIds': PropertySchema(
      id: 0,
      name: r'categoriaIds',
      type: IsarType.stringList,
    ),
    r'citaIds': PropertySchema(
      id: 1,
      name: r'citaIds',
      type: IsarType.stringList,
    ),
    r'color': PropertySchema(
      id: 2,
      name: r'color',
      type: IsarType.string,
    ),
    r'contenido': PropertySchema(
      id: 3,
      name: r'contenido',
      type: IsarType.string,
    ),
    r'fechaCreacion': PropertySchema(
      id: 4,
      name: r'fechaCreacion',
      type: IsarType.dateTime,
    ),
    r'fechaModificacion': PropertySchema(
      id: 5,
      name: r'fechaModificacion',
      type: IsarType.dateTime,
    ),
    r'libroId': PropertySchema(
      id: 6,
      name: r'libroId',
      type: IsarType.string,
    ),
    r'notaId': PropertySchema(
      id: 7,
      name: r'notaId',
      type: IsarType.string,
    ),
    r'pagina': PropertySchema(
      id: 8,
      name: r'pagina',
      type: IsarType.long,
    ),
    r'posicionPorcentaje': PropertySchema(
      id: 9,
      name: r'posicionPorcentaje',
      type: IsarType.double,
    ),
    r'tags': PropertySchema(
      id: 10,
      name: r'tags',
      type: IsarType.stringList,
    ),
    r'titulo': PropertySchema(
      id: 11,
      name: r'titulo',
      type: IsarType.string,
    ),
    r'usuarioId': PropertySchema(
      id: 12,
      name: r'usuarioId',
      type: IsarType.string,
    )
  },
  estimateSize: _notaEstimateSize,
  serialize: _notaSerialize,
  deserialize: _notaDeserialize,
  deserializeProp: _notaDeserializeProp,
  idName: r'id',
  indexes: {
    r'notaId': IndexSchema(
      id: 7727165401871810832,
      name: r'notaId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'notaId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'fechaCreacion': IndexSchema(
      id: 3471812336142411217,
      name: r'fechaCreacion',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fechaCreacion',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _notaGetId,
  getLinks: _notaGetLinks,
  attach: _notaAttach,
  version: '3.1.0+1',
);

int _notaEstimateSize(
  Nota object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.categoriaIds.length * 3;
  {
    for (var i = 0; i < object.categoriaIds.length; i++) {
      final value = object.categoriaIds[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.citaIds.length * 3;
  {
    for (var i = 0; i < object.citaIds.length; i++) {
      final value = object.citaIds[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.color;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.contenido.length * 3;
  bytesCount += 3 + object.libroId.length * 3;
  bytesCount += 3 + object.notaId.length * 3;
  bytesCount += 3 + object.tags.length * 3;
  {
    for (var i = 0; i < object.tags.length; i++) {
      final value = object.tags[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.titulo.length * 3;
  bytesCount += 3 + object.usuarioId.length * 3;
  return bytesCount;
}

void _notaSerialize(
  Nota object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.categoriaIds);
  writer.writeStringList(offsets[1], object.citaIds);
  writer.writeString(offsets[2], object.color);
  writer.writeString(offsets[3], object.contenido);
  writer.writeDateTime(offsets[4], object.fechaCreacion);
  writer.writeDateTime(offsets[5], object.fechaModificacion);
  writer.writeString(offsets[6], object.libroId);
  writer.writeString(offsets[7], object.notaId);
  writer.writeLong(offsets[8], object.pagina);
  writer.writeDouble(offsets[9], object.posicionPorcentaje);
  writer.writeStringList(offsets[10], object.tags);
  writer.writeString(offsets[11], object.titulo);
  writer.writeString(offsets[12], object.usuarioId);
}

Nota _notaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Nota();
  object.categoriaIds = reader.readStringList(offsets[0]) ?? [];
  object.citaIds = reader.readStringList(offsets[1]) ?? [];
  object.color = reader.readStringOrNull(offsets[2]);
  object.contenido = reader.readString(offsets[3]);
  object.fechaCreacion = reader.readDateTime(offsets[4]);
  object.fechaModificacion = reader.readDateTimeOrNull(offsets[5]);
  object.id = id;
  object.libroId = reader.readString(offsets[6]);
  object.notaId = reader.readString(offsets[7]);
  object.pagina = reader.readLongOrNull(offsets[8]);
  object.posicionPorcentaje = reader.readDoubleOrNull(offsets[9]);
  object.tags = reader.readStringList(offsets[10]) ?? [];
  object.titulo = reader.readString(offsets[11]);
  object.usuarioId = reader.readString(offsets[12]);
  return object;
}

P _notaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readStringList(offset) ?? []) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _notaGetId(Nota object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _notaGetLinks(Nota object) {
  return [];
}

void _notaAttach(IsarCollection<dynamic> col, Id id, Nota object) {
  object.id = id;
}

extension NotaByIndex on IsarCollection<Nota> {
  Future<Nota?> getByNotaId(String notaId) {
    return getByIndex(r'notaId', [notaId]);
  }

  Nota? getByNotaIdSync(String notaId) {
    return getByIndexSync(r'notaId', [notaId]);
  }

  Future<bool> deleteByNotaId(String notaId) {
    return deleteByIndex(r'notaId', [notaId]);
  }

  bool deleteByNotaIdSync(String notaId) {
    return deleteByIndexSync(r'notaId', [notaId]);
  }

  Future<List<Nota?>> getAllByNotaId(List<String> notaIdValues) {
    final values = notaIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'notaId', values);
  }

  List<Nota?> getAllByNotaIdSync(List<String> notaIdValues) {
    final values = notaIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'notaId', values);
  }

  Future<int> deleteAllByNotaId(List<String> notaIdValues) {
    final values = notaIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'notaId', values);
  }

  int deleteAllByNotaIdSync(List<String> notaIdValues) {
    final values = notaIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'notaId', values);
  }

  Future<Id> putByNotaId(Nota object) {
    return putByIndex(r'notaId', object);
  }

  Id putByNotaIdSync(Nota object, {bool saveLinks = true}) {
    return putByIndexSync(r'notaId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByNotaId(List<Nota> objects) {
    return putAllByIndex(r'notaId', objects);
  }

  List<Id> putAllByNotaIdSync(List<Nota> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'notaId', objects, saveLinks: saveLinks);
  }
}

extension NotaQueryWhereSort on QueryBuilder<Nota, Nota, QWhere> {
  QueryBuilder<Nota, Nota, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhere> anyFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fechaCreacion'),
      );
    });
  }
}

extension NotaQueryWhere on QueryBuilder<Nota, Nota, QWhereClause> {
  QueryBuilder<Nota, Nota, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> notaIdEqualTo(String notaId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'notaId',
        value: [notaId],
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> notaIdNotEqualTo(String notaId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'notaId',
              lower: [],
              upper: [notaId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'notaId',
              lower: [notaId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'notaId',
              lower: [notaId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'notaId',
              lower: [],
              upper: [notaId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> fechaCreacionEqualTo(
      DateTime fechaCreacion) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fechaCreacion',
        value: [fechaCreacion],
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> fechaCreacionNotEqualTo(
      DateTime fechaCreacion) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [],
              upper: [fechaCreacion],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [fechaCreacion],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [fechaCreacion],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fechaCreacion',
              lower: [],
              upper: [fechaCreacion],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> fechaCreacionGreaterThan(
    DateTime fechaCreacion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaCreacion',
        lower: [fechaCreacion],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> fechaCreacionLessThan(
    DateTime fechaCreacion, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaCreacion',
        lower: [],
        upper: [fechaCreacion],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterWhereClause> fechaCreacionBetween(
    DateTime lowerFechaCreacion,
    DateTime upperFechaCreacion, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fechaCreacion',
        lower: [lowerFechaCreacion],
        includeLower: includeLower,
        upper: [upperFechaCreacion],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NotaQueryFilter on QueryBuilder<Nota, Nota, QFilterCondition> {
  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition>
      categoriaIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoriaIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoriaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoriaIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoriaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition>
      categoriaIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoriaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> categoriaIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoriaIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'citaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'citaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'citaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'citaIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'citaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'citaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'citaIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'citaIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'citaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'citaIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'citaIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'citaIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'citaIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'citaIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'citaIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> citaIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'citaIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'color',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> colorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contenido',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contenido',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contenido',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contenido',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> contenidoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contenido',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaCreacionEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaCreacionGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaCreacionLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaCreacionBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaCreacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaModificacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaModificacion',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaModificacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaModificacion',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaModificacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaModificacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaModificacionGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaModificacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaModificacionLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaModificacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> fechaModificacionBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaModificacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libroId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libroId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> libroIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notaId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notaId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notaId',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> notaIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notaId',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> paginaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pagina',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> paginaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pagina',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> paginaEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pagina',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> paginaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pagina',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> paginaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pagina',
        value: value,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> paginaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pagina',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> posicionPorcentajeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'posicionPorcentaje',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition>
      posicionPorcentajeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'posicionPorcentaje',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> posicionPorcentajeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'posicionPorcentaje',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> posicionPorcentajeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'posicionPorcentaje',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> posicionPorcentajeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'posicionPorcentaje',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> posicionPorcentajeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'posicionPorcentaje',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titulo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titulo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titulo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> tituloIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titulo',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<Nota, Nota, QAfterFilterCondition> usuarioIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioId',
        value: '',
      ));
    });
  }
}

extension NotaQueryObject on QueryBuilder<Nota, Nota, QFilterCondition> {}

extension NotaQueryLinks on QueryBuilder<Nota, Nota, QFilterCondition> {}

extension NotaQuerySortBy on QueryBuilder<Nota, Nota, QSortBy> {
  QueryBuilder<Nota, Nota, QAfterSortBy> sortByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByContenido() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contenido', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByContenidoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contenido', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByFechaModificacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaModificacion', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByFechaModificacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaModificacion', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByNotaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notaId', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByNotaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notaId', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByPagina() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pagina', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByPaginaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pagina', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByPosicionPorcentaje() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posicionPorcentaje', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByPosicionPorcentajeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posicionPorcentaje', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> sortByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension NotaQuerySortThenBy on QueryBuilder<Nota, Nota, QSortThenBy> {
  QueryBuilder<Nota, Nota, QAfterSortBy> thenByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByContenido() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contenido', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByContenidoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contenido', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByFechaCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaCreacion', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByFechaModificacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaModificacion', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByFechaModificacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaModificacion', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByNotaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notaId', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByNotaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notaId', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByPagina() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pagina', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByPaginaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pagina', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByPosicionPorcentaje() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posicionPorcentaje', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByPosicionPorcentajeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'posicionPorcentaje', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByTitulo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByTituloDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titulo', Sort.desc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Nota, Nota, QAfterSortBy> thenByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension NotaQueryWhereDistinct on QueryBuilder<Nota, Nota, QDistinct> {
  QueryBuilder<Nota, Nota, QDistinct> distinctByCategoriaIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoriaIds');
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByCitaIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'citaIds');
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'color', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByContenido(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contenido', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByFechaCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaCreacion');
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByFechaModificacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaModificacion');
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByLibroId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libroId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByNotaId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notaId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByPagina() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pagina');
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByPosicionPorcentaje() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'posicionPorcentaje');
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tags');
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByTitulo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titulo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Nota, Nota, QDistinct> distinctByUsuarioId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioId', caseSensitive: caseSensitive);
    });
  }
}

extension NotaQueryProperty on QueryBuilder<Nota, Nota, QQueryProperty> {
  QueryBuilder<Nota, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Nota, List<String>, QQueryOperations> categoriaIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoriaIds');
    });
  }

  QueryBuilder<Nota, List<String>, QQueryOperations> citaIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'citaIds');
    });
  }

  QueryBuilder<Nota, String?, QQueryOperations> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'color');
    });
  }

  QueryBuilder<Nota, String, QQueryOperations> contenidoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contenido');
    });
  }

  QueryBuilder<Nota, DateTime, QQueryOperations> fechaCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaCreacion');
    });
  }

  QueryBuilder<Nota, DateTime?, QQueryOperations> fechaModificacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaModificacion');
    });
  }

  QueryBuilder<Nota, String, QQueryOperations> libroIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libroId');
    });
  }

  QueryBuilder<Nota, String, QQueryOperations> notaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notaId');
    });
  }

  QueryBuilder<Nota, int?, QQueryOperations> paginaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pagina');
    });
  }

  QueryBuilder<Nota, double?, QQueryOperations> posicionPorcentajeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'posicionPorcentaje');
    });
  }

  QueryBuilder<Nota, List<String>, QQueryOperations> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }

  QueryBuilder<Nota, String, QQueryOperations> tituloProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titulo');
    });
  }

  QueryBuilder<Nota, String, QQueryOperations> usuarioIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSesionLecturaCollection on Isar {
  IsarCollection<SesionLectura> get sesionLecturas => this.collection();
}

const SesionLecturaSchema = CollectionSchema(
  name: r'SesionLectura',
  id: -2486652991219916548,
  properties: {
    r'activa': PropertySchema(
      id: 0,
      name: r'activa',
      type: IsarType.bool,
    ),
    r'dispositivoId': PropertySchema(
      id: 1,
      name: r'dispositivoId',
      type: IsarType.string,
    ),
    r'duracionMinutos': PropertySchema(
      id: 2,
      name: r'duracionMinutos',
      type: IsarType.long,
    ),
    r'fin': PropertySchema(
      id: 3,
      name: r'fin',
      type: IsarType.dateTime,
    ),
    r'inicio': PropertySchema(
      id: 4,
      name: r'inicio',
      type: IsarType.dateTime,
    ),
    r'libroId': PropertySchema(
      id: 5,
      name: r'libroId',
      type: IsarType.string,
    ),
    r'paginasLeidas': PropertySchema(
      id: 6,
      name: r'paginasLeidas',
      type: IsarType.long,
    ),
    r'progresoFinal': PropertySchema(
      id: 7,
      name: r'progresoFinal',
      type: IsarType.double,
    ),
    r'progresoInicial': PropertySchema(
      id: 8,
      name: r'progresoInicial',
      type: IsarType.double,
    ),
    r'sesionId': PropertySchema(
      id: 9,
      name: r'sesionId',
      type: IsarType.string,
    ),
    r'usuarioId': PropertySchema(
      id: 10,
      name: r'usuarioId',
      type: IsarType.string,
    )
  },
  estimateSize: _sesionLecturaEstimateSize,
  serialize: _sesionLecturaSerialize,
  deserialize: _sesionLecturaDeserialize,
  deserializeProp: _sesionLecturaDeserializeProp,
  idName: r'id',
  indexes: {
    r'inicio': IndexSchema(
      id: -3250443433104705250,
      name: r'inicio',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'inicio',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _sesionLecturaGetId,
  getLinks: _sesionLecturaGetLinks,
  attach: _sesionLecturaAttach,
  version: '3.1.0+1',
);

int _sesionLecturaEstimateSize(
  SesionLectura object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.dispositivoId.length * 3;
  bytesCount += 3 + object.libroId.length * 3;
  bytesCount += 3 + object.sesionId.length * 3;
  bytesCount += 3 + object.usuarioId.length * 3;
  return bytesCount;
}

void _sesionLecturaSerialize(
  SesionLectura object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.activa);
  writer.writeString(offsets[1], object.dispositivoId);
  writer.writeLong(offsets[2], object.duracionMinutos);
  writer.writeDateTime(offsets[3], object.fin);
  writer.writeDateTime(offsets[4], object.inicio);
  writer.writeString(offsets[5], object.libroId);
  writer.writeLong(offsets[6], object.paginasLeidas);
  writer.writeDouble(offsets[7], object.progresoFinal);
  writer.writeDouble(offsets[8], object.progresoInicial);
  writer.writeString(offsets[9], object.sesionId);
  writer.writeString(offsets[10], object.usuarioId);
}

SesionLectura _sesionLecturaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SesionLectura();
  object.activa = reader.readBool(offsets[0]);
  object.dispositivoId = reader.readString(offsets[1]);
  object.duracionMinutos = reader.readLongOrNull(offsets[2]);
  object.fin = reader.readDateTimeOrNull(offsets[3]);
  object.id = id;
  object.inicio = reader.readDateTime(offsets[4]);
  object.libroId = reader.readString(offsets[5]);
  object.paginasLeidas = reader.readLongOrNull(offsets[6]);
  object.progresoFinal = reader.readDoubleOrNull(offsets[7]);
  object.progresoInicial = reader.readDoubleOrNull(offsets[8]);
  object.sesionId = reader.readString(offsets[9]);
  object.usuarioId = reader.readString(offsets[10]);
  return object;
}

P _sesionLecturaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sesionLecturaGetId(SesionLectura object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sesionLecturaGetLinks(SesionLectura object) {
  return [];
}

void _sesionLecturaAttach(
    IsarCollection<dynamic> col, Id id, SesionLectura object) {
  object.id = id;
}

extension SesionLecturaQueryWhereSort
    on QueryBuilder<SesionLectura, SesionLectura, QWhere> {
  QueryBuilder<SesionLectura, SesionLectura, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhere> anyInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'inicio'),
      );
    });
  }
}

extension SesionLecturaQueryWhere
    on QueryBuilder<SesionLectura, SesionLectura, QWhereClause> {
  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause> inicioEqualTo(
      DateTime inicio) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'inicio',
        value: [inicio],
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause>
      inicioNotEqualTo(DateTime inicio) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'inicio',
              lower: [],
              upper: [inicio],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'inicio',
              lower: [inicio],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'inicio',
              lower: [inicio],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'inicio',
              lower: [],
              upper: [inicio],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause>
      inicioGreaterThan(
    DateTime inicio, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'inicio',
        lower: [inicio],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause> inicioLessThan(
    DateTime inicio, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'inicio',
        lower: [],
        upper: [inicio],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterWhereClause> inicioBetween(
    DateTime lowerInicio,
    DateTime upperInicio, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'inicio',
        lower: [lowerInicio],
        includeLower: includeLower,
        upper: [upperInicio],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SesionLecturaQueryFilter
    on QueryBuilder<SesionLectura, SesionLectura, QFilterCondition> {
  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      activaEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activa',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispositivoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispositivoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispositivoId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoId',
        value: '',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      dispositivoIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispositivoId',
        value: '',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      duracionMinutosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'duracionMinutos',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      duracionMinutosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'duracionMinutos',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      duracionMinutosEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duracionMinutos',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      duracionMinutosGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duracionMinutos',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      duracionMinutosLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duracionMinutos',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      duracionMinutosBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duracionMinutos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      finIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fin',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      finIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fin',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition> finEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fin',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      finGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fin',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition> finLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fin',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition> finBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      inicioEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inicio',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      inicioGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inicio',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      inicioLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inicio',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      inicioBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inicio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'libroId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'libroId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'libroId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      libroIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'libroId',
        value: '',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      paginasLeidasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paginasLeidas',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      paginasLeidasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paginasLeidas',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      paginasLeidasEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paginasLeidas',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      paginasLeidasGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paginasLeidas',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      paginasLeidasLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paginasLeidas',
        value: value,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      paginasLeidasBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paginasLeidas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoFinalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'progresoFinal',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoFinalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'progresoFinal',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoFinalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progresoFinal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoFinalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progresoFinal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoFinalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progresoFinal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoFinalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progresoFinal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoInicialIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'progresoInicial',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoInicialIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'progresoInicial',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoInicialEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progresoInicial',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoInicialGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progresoInicial',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoInicialLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progresoInicial',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      progresoInicialBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progresoInicial',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sesionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sesionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sesionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sesionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sesionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sesionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sesionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sesionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sesionId',
        value: '',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      sesionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sesionId',
        value: '',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterFilterCondition>
      usuarioIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioId',
        value: '',
      ));
    });
  }
}

extension SesionLecturaQueryObject
    on QueryBuilder<SesionLectura, SesionLectura, QFilterCondition> {}

extension SesionLecturaQueryLinks
    on QueryBuilder<SesionLectura, SesionLectura, QFilterCondition> {}

extension SesionLecturaQuerySortBy
    on QueryBuilder<SesionLectura, SesionLectura, QSortBy> {
  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortByActiva() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activa', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortByActivaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activa', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByDispositivoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByDispositivoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByDuracionMinutos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionMinutos', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByDuracionMinutosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionMinutos', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortByFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fin', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortByFinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fin', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortByInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inicio', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortByInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inicio', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByPaginasLeidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginasLeidas', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByPaginasLeidasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginasLeidas', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByProgresoFinal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoFinal', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByProgresoFinalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoFinal', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByProgresoInicial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoInicial', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByProgresoInicialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoInicial', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortBySesionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sesionId', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortBySesionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sesionId', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> sortByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      sortByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension SesionLecturaQuerySortThenBy
    on QueryBuilder<SesionLectura, SesionLectura, QSortThenBy> {
  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByActiva() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activa', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByActivaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activa', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByDispositivoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByDispositivoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoId', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByDuracionMinutos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionMinutos', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByDuracionMinutosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duracionMinutos', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fin', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByFinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fin', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inicio', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByInicioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inicio', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByLibroId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByLibroIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'libroId', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByPaginasLeidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginasLeidas', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByPaginasLeidasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginasLeidas', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByProgresoFinal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoFinal', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByProgresoFinalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoFinal', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByProgresoInicial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoInicial', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByProgresoInicialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progresoInicial', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenBySesionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sesionId', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenBySesionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sesionId', Sort.desc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy> thenByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QAfterSortBy>
      thenByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension SesionLecturaQueryWhereDistinct
    on QueryBuilder<SesionLectura, SesionLectura, QDistinct> {
  QueryBuilder<SesionLectura, SesionLectura, QDistinct> distinctByActiva() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activa');
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct> distinctByDispositivoId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispositivoId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct>
      distinctByDuracionMinutos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duracionMinutos');
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct> distinctByFin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fin');
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct> distinctByInicio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inicio');
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct> distinctByLibroId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'libroId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct>
      distinctByPaginasLeidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paginasLeidas');
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct>
      distinctByProgresoFinal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progresoFinal');
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct>
      distinctByProgresoInicial() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progresoInicial');
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct> distinctBySesionId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sesionId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SesionLectura, SesionLectura, QDistinct> distinctByUsuarioId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioId', caseSensitive: caseSensitive);
    });
  }
}

extension SesionLecturaQueryProperty
    on QueryBuilder<SesionLectura, SesionLectura, QQueryProperty> {
  QueryBuilder<SesionLectura, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SesionLectura, bool, QQueryOperations> activaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activa');
    });
  }

  QueryBuilder<SesionLectura, String, QQueryOperations>
      dispositivoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispositivoId');
    });
  }

  QueryBuilder<SesionLectura, int?, QQueryOperations>
      duracionMinutosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duracionMinutos');
    });
  }

  QueryBuilder<SesionLectura, DateTime?, QQueryOperations> finProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fin');
    });
  }

  QueryBuilder<SesionLectura, DateTime, QQueryOperations> inicioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inicio');
    });
  }

  QueryBuilder<SesionLectura, String, QQueryOperations> libroIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'libroId');
    });
  }

  QueryBuilder<SesionLectura, int?, QQueryOperations> paginasLeidasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paginasLeidas');
    });
  }

  QueryBuilder<SesionLectura, double?, QQueryOperations>
      progresoFinalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progresoFinal');
    });
  }

  QueryBuilder<SesionLectura, double?, QQueryOperations>
      progresoInicialProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progresoInicial');
    });
  }

  QueryBuilder<SesionLectura, String, QQueryOperations> sesionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sesionId');
    });
  }

  QueryBuilder<SesionLectura, String, QQueryOperations> usuarioIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioId');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEventoSincronizacionCollection on Isar {
  IsarCollection<EventoSincronizacion> get eventoSincronizacions =>
      this.collection();
}

const EventoSincronizacionSchema = CollectionSchema(
  name: r'EventoSincronizacion',
  id: -1025868329200477455,
  properties: {
    r'dispositivoDestinoId': PropertySchema(
      id: 0,
      name: r'dispositivoDestinoId',
      type: IsarType.string,
    ),
    r'dispositivoOrigenId': PropertySchema(
      id: 1,
      name: r'dispositivoOrigenId',
      type: IsarType.string,
    ),
    r'entidadId': PropertySchema(
      id: 2,
      name: r'entidadId',
      type: IsarType.string,
    ),
    r'error': PropertySchema(
      id: 3,
      name: r'error',
      type: IsarType.string,
    ),
    r'eventoId': PropertySchema(
      id: 4,
      name: r'eventoId',
      type: IsarType.string,
    ),
    r'exitoso': PropertySchema(
      id: 5,
      name: r'exitoso',
      type: IsarType.bool,
    ),
    r'fecha': PropertySchema(
      id: 6,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'hashDatos': PropertySchema(
      id: 7,
      name: r'hashDatos',
      type: IsarType.string,
    ),
    r'tipoEvento': PropertySchema(
      id: 8,
      name: r'tipoEvento',
      type: IsarType.string,
    ),
    r'usuarioId': PropertySchema(
      id: 9,
      name: r'usuarioId',
      type: IsarType.string,
    ),
    r'version': PropertySchema(
      id: 10,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _eventoSincronizacionEstimateSize,
  serialize: _eventoSincronizacionSerialize,
  deserialize: _eventoSincronizacionDeserialize,
  deserializeProp: _eventoSincronizacionDeserializeProp,
  idName: r'id',
  indexes: {
    r'fecha': IndexSchema(
      id: -5395179286312083551,
      name: r'fecha',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fecha',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _eventoSincronizacionGetId,
  getLinks: _eventoSincronizacionGetLinks,
  attach: _eventoSincronizacionAttach,
  version: '3.1.0+1',
);

int _eventoSincronizacionEstimateSize(
  EventoSincronizacion object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.dispositivoDestinoId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.dispositivoOrigenId.length * 3;
  bytesCount += 3 + object.entidadId.length * 3;
  {
    final value = object.error;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.eventoId.length * 3;
  {
    final value = object.hashDatos;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tipoEvento.length * 3;
  bytesCount += 3 + object.usuarioId.length * 3;
  return bytesCount;
}

void _eventoSincronizacionSerialize(
  EventoSincronizacion object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.dispositivoDestinoId);
  writer.writeString(offsets[1], object.dispositivoOrigenId);
  writer.writeString(offsets[2], object.entidadId);
  writer.writeString(offsets[3], object.error);
  writer.writeString(offsets[4], object.eventoId);
  writer.writeBool(offsets[5], object.exitoso);
  writer.writeDateTime(offsets[6], object.fecha);
  writer.writeString(offsets[7], object.hashDatos);
  writer.writeString(offsets[8], object.tipoEvento);
  writer.writeString(offsets[9], object.usuarioId);
  writer.writeLong(offsets[10], object.version);
}

EventoSincronizacion _eventoSincronizacionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EventoSincronizacion();
  object.dispositivoDestinoId = reader.readStringOrNull(offsets[0]);
  object.dispositivoOrigenId = reader.readString(offsets[1]);
  object.entidadId = reader.readString(offsets[2]);
  object.error = reader.readStringOrNull(offsets[3]);
  object.eventoId = reader.readString(offsets[4]);
  object.exitoso = reader.readBool(offsets[5]);
  object.fecha = reader.readDateTime(offsets[6]);
  object.hashDatos = reader.readStringOrNull(offsets[7]);
  object.id = id;
  object.tipoEvento = reader.readString(offsets[8]);
  object.usuarioId = reader.readString(offsets[9]);
  object.version = reader.readLong(offsets[10]);
  return object;
}

P _eventoSincronizacionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _eventoSincronizacionGetId(EventoSincronizacion object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _eventoSincronizacionGetLinks(
    EventoSincronizacion object) {
  return [];
}

void _eventoSincronizacionAttach(
    IsarCollection<dynamic> col, Id id, EventoSincronizacion object) {
  object.id = id;
}

extension EventoSincronizacionQueryWhereSort
    on QueryBuilder<EventoSincronizacion, EventoSincronizacion, QWhere> {
  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhere>
      anyFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fecha'),
      );
    });
  }
}

extension EventoSincronizacionQueryWhere
    on QueryBuilder<EventoSincronizacion, EventoSincronizacion, QWhereClause> {
  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      fechaEqualTo(DateTime fecha) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fecha',
        value: [fecha],
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      fechaNotEqualTo(DateTime fecha) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [],
              upper: [fecha],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [fecha],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [fecha],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [],
              upper: [fecha],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      fechaGreaterThan(
    DateTime fecha, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [fecha],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      fechaLessThan(
    DateTime fecha, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [],
        upper: [fecha],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterWhereClause>
      fechaBetween(
    DateTime lowerFecha,
    DateTime upperFecha, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [lowerFecha],
        includeLower: includeLower,
        upper: [upperFecha],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EventoSincronizacionQueryFilter on QueryBuilder<EventoSincronizacion,
    EventoSincronizacion, QFilterCondition> {
  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dispositivoDestinoId',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dispositivoDestinoId',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoDestinoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispositivoDestinoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispositivoDestinoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispositivoDestinoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispositivoDestinoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispositivoDestinoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      dispositivoDestinoIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispositivoDestinoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      dispositivoDestinoIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispositivoDestinoId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoDestinoId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoDestinoIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispositivoDestinoId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoOrigenIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoOrigenId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoOrigenIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispositivoOrigenId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoOrigenIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispositivoOrigenId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoOrigenIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispositivoOrigenId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoOrigenIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispositivoOrigenId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoOrigenIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispositivoOrigenId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      dispositivoOrigenIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispositivoOrigenId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      dispositivoOrigenIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispositivoOrigenId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoOrigenIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispositivoOrigenId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> dispositivoOrigenIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispositivoOrigenId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> entidadIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entidadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> entidadIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entidadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> entidadIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entidadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> entidadIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entidadId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> entidadIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'entidadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> entidadIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'entidadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      entidadIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'entidadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      entidadIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'entidadId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> entidadIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entidadId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> entidadIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'entidadId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'error',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'error',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'error',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      errorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      errorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'error',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'error',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> errorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'error',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> eventoIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> eventoIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> eventoIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> eventoIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> eventoIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> eventoIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      eventoIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventoId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      eventoIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventoId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> eventoIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventoId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> eventoIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventoId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> exitosoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exitoso',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> fechaEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> fechaGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> fechaLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> fechaBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hashDatos',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hashDatos',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashDatos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashDatos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashDatos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashDatos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hashDatos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hashDatos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      hashDatosContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hashDatos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      hashDatosMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hashDatos',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashDatos',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> hashDatosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hashDatos',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> tipoEventoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> tipoEventoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> tipoEventoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> tipoEventoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoEvento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> tipoEventoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> tipoEventoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      tipoEventoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipoEvento',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      tipoEventoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipoEvento',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> tipoEventoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoEvento',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> tipoEventoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipoEvento',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> usuarioIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> usuarioIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> usuarioIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> usuarioIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> usuarioIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> usuarioIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      usuarioIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
          QAfterFilterCondition>
      usuarioIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> usuarioIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> usuarioIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> versionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion,
      QAfterFilterCondition> versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EventoSincronizacionQueryObject on QueryBuilder<EventoSincronizacion,
    EventoSincronizacion, QFilterCondition> {}

extension EventoSincronizacionQueryLinks on QueryBuilder<EventoSincronizacion,
    EventoSincronizacion, QFilterCondition> {}

extension EventoSincronizacionQuerySortBy
    on QueryBuilder<EventoSincronizacion, EventoSincronizacion, QSortBy> {
  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByDispositivoDestinoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoDestinoId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByDispositivoDestinoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoDestinoId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByDispositivoOrigenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoOrigenId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByDispositivoOrigenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoOrigenId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByEntidadId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByEntidadIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByError() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByErrorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByEventoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventoId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByEventoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventoId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByExitoso() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exitoso', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByExitosoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exitoso', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByHashDatos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashDatos', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByHashDatosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashDatos', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByTipoEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoEvento', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByTipoEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoEvento', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension EventoSincronizacionQuerySortThenBy
    on QueryBuilder<EventoSincronizacion, EventoSincronizacion, QSortThenBy> {
  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByDispositivoDestinoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoDestinoId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByDispositivoDestinoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoDestinoId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByDispositivoOrigenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoOrigenId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByDispositivoOrigenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispositivoOrigenId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByEntidadId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByEntidadIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entidadId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByError() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByErrorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByEventoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventoId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByEventoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventoId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByExitoso() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exitoso', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByExitosoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exitoso', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByHashDatos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashDatos', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByHashDatosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashDatos', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByTipoEvento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoEvento', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByTipoEventoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoEvento', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension EventoSincronizacionQueryWhereDistinct
    on QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct> {
  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByDispositivoDestinoId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispositivoDestinoId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByDispositivoOrigenId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispositivoOrigenId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByEntidadId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entidadId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByError({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'error', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByEventoId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventoId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByExitoso() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exitoso');
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByHashDatos({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashDatos', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByTipoEvento({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoEvento', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByUsuarioId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EventoSincronizacion, EventoSincronizacion, QDistinct>
      distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension EventoSincronizacionQueryProperty on QueryBuilder<
    EventoSincronizacion, EventoSincronizacion, QQueryProperty> {
  QueryBuilder<EventoSincronizacion, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EventoSincronizacion, String?, QQueryOperations>
      dispositivoDestinoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispositivoDestinoId');
    });
  }

  QueryBuilder<EventoSincronizacion, String, QQueryOperations>
      dispositivoOrigenIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispositivoOrigenId');
    });
  }

  QueryBuilder<EventoSincronizacion, String, QQueryOperations>
      entidadIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entidadId');
    });
  }

  QueryBuilder<EventoSincronizacion, String?, QQueryOperations>
      errorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'error');
    });
  }

  QueryBuilder<EventoSincronizacion, String, QQueryOperations>
      eventoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventoId');
    });
  }

  QueryBuilder<EventoSincronizacion, bool, QQueryOperations> exitosoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exitoso');
    });
  }

  QueryBuilder<EventoSincronizacion, DateTime, QQueryOperations>
      fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<EventoSincronizacion, String?, QQueryOperations>
      hashDatosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashDatos');
    });
  }

  QueryBuilder<EventoSincronizacion, String, QQueryOperations>
      tipoEventoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoEvento');
    });
  }

  QueryBuilder<EventoSincronizacion, String, QQueryOperations>
      usuarioIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioId');
    });
  }

  QueryBuilder<EventoSincronizacion, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEstadisticaCollection on Isar {
  IsarCollection<Estadistica> get estadisticas => this.collection();
}

const EstadisticaSchema = CollectionSchema(
  name: r'Estadistica',
  id: -6237437757978436734,
  properties: {
    r'citasCreadas': PropertySchema(
      id: 0,
      name: r'citasCreadas',
      type: IsarType.long,
    ),
    r'fecha': PropertySchema(
      id: 1,
      name: r'fecha',
      type: IsarType.dateTime,
    ),
    r'librosCompletados': PropertySchema(
      id: 2,
      name: r'librosCompletados',
      type: IsarType.long,
    ),
    r'librosLeidos': PropertySchema(
      id: 3,
      name: r'librosLeidos',
      type: IsarType.long,
    ),
    r'minutosLectura': PropertySchema(
      id: 4,
      name: r'minutosLectura',
      type: IsarType.long,
    ),
    r'notasCreadas': PropertySchema(
      id: 5,
      name: r'notasCreadas',
      type: IsarType.long,
    ),
    r'paginasLeidas': PropertySchema(
      id: 6,
      name: r'paginasLeidas',
      type: IsarType.long,
    ),
    r'periodo': PropertySchema(
      id: 7,
      name: r'periodo',
      type: IsarType.string,
    ),
    r'usuarioId': PropertySchema(
      id: 8,
      name: r'usuarioId',
      type: IsarType.string,
    )
  },
  estimateSize: _estadisticaEstimateSize,
  serialize: _estadisticaSerialize,
  deserialize: _estadisticaDeserialize,
  deserializeProp: _estadisticaDeserializeProp,
  idName: r'id',
  indexes: {
    r'fecha': IndexSchema(
      id: -5395179286312083551,
      name: r'fecha',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fecha',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _estadisticaGetId,
  getLinks: _estadisticaGetLinks,
  attach: _estadisticaAttach,
  version: '3.1.0+1',
);

int _estadisticaEstimateSize(
  Estadistica object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.periodo.length * 3;
  bytesCount += 3 + object.usuarioId.length * 3;
  return bytesCount;
}

void _estadisticaSerialize(
  Estadistica object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.citasCreadas);
  writer.writeDateTime(offsets[1], object.fecha);
  writer.writeLong(offsets[2], object.librosCompletados);
  writer.writeLong(offsets[3], object.librosLeidos);
  writer.writeLong(offsets[4], object.minutosLectura);
  writer.writeLong(offsets[5], object.notasCreadas);
  writer.writeLong(offsets[6], object.paginasLeidas);
  writer.writeString(offsets[7], object.periodo);
  writer.writeString(offsets[8], object.usuarioId);
}

Estadistica _estadisticaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Estadistica();
  object.citasCreadas = reader.readLong(offsets[0]);
  object.fecha = reader.readDateTime(offsets[1]);
  object.id = id;
  object.librosCompletados = reader.readLong(offsets[2]);
  object.librosLeidos = reader.readLong(offsets[3]);
  object.minutosLectura = reader.readLong(offsets[4]);
  object.notasCreadas = reader.readLong(offsets[5]);
  object.paginasLeidas = reader.readLong(offsets[6]);
  object.periodo = reader.readString(offsets[7]);
  object.usuarioId = reader.readString(offsets[8]);
  return object;
}

P _estadisticaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _estadisticaGetId(Estadistica object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _estadisticaGetLinks(Estadistica object) {
  return [];
}

void _estadisticaAttach(
    IsarCollection<dynamic> col, Id id, Estadistica object) {
  object.id = id;
}

extension EstadisticaQueryWhereSort
    on QueryBuilder<Estadistica, Estadistica, QWhere> {
  QueryBuilder<Estadistica, Estadistica, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhere> anyFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fecha'),
      );
    });
  }
}

extension EstadisticaQueryWhere
    on QueryBuilder<Estadistica, Estadistica, QWhereClause> {
  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> fechaEqualTo(
      DateTime fecha) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fecha',
        value: [fecha],
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> fechaNotEqualTo(
      DateTime fecha) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [],
              upper: [fecha],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [fecha],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [fecha],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fecha',
              lower: [],
              upper: [fecha],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> fechaGreaterThan(
    DateTime fecha, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [fecha],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> fechaLessThan(
    DateTime fecha, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [],
        upper: [fecha],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterWhereClause> fechaBetween(
    DateTime lowerFecha,
    DateTime upperFecha, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fecha',
        lower: [lowerFecha],
        includeLower: includeLower,
        upper: [upperFecha],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EstadisticaQueryFilter
    on QueryBuilder<Estadistica, Estadistica, QFilterCondition> {
  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      citasCreadasEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'citasCreadas',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      citasCreadasGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'citasCreadas',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      citasCreadasLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'citasCreadas',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      citasCreadasBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'citasCreadas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> fechaEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      fechaGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> fechaLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> fechaBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      librosCompletadosEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'librosCompletados',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      librosCompletadosGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'librosCompletados',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      librosCompletadosLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'librosCompletados',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      librosCompletadosBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'librosCompletados',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      librosLeidosEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'librosLeidos',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      librosLeidosGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'librosLeidos',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      librosLeidosLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'librosLeidos',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      librosLeidosBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'librosLeidos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      minutosLecturaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minutosLectura',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      minutosLecturaGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minutosLectura',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      minutosLecturaLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minutosLectura',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      minutosLecturaBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minutosLectura',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      notasCreadasEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notasCreadas',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      notasCreadasGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notasCreadas',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      notasCreadasLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notasCreadas',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      notasCreadasBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notasCreadas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      paginasLeidasEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paginasLeidas',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      paginasLeidasGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paginasLeidas',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      paginasLeidasLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paginasLeidas',
        value: value,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      paginasLeidasBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paginasLeidas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> periodoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'periodo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      periodoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'periodo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> periodoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'periodo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> periodoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'periodo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      periodoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'periodo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> periodoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'periodo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> periodoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'periodo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition> periodoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'periodo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      periodoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'periodo',
        value: '',
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      periodoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'periodo',
        value: '',
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuarioId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuarioId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuarioId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuarioId',
        value: '',
      ));
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterFilterCondition>
      usuarioIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuarioId',
        value: '',
      ));
    });
  }
}

extension EstadisticaQueryObject
    on QueryBuilder<Estadistica, Estadistica, QFilterCondition> {}

extension EstadisticaQueryLinks
    on QueryBuilder<Estadistica, Estadistica, QFilterCondition> {}

extension EstadisticaQuerySortBy
    on QueryBuilder<Estadistica, Estadistica, QSortBy> {
  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByCitasCreadas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citasCreadas', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      sortByCitasCreadasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citasCreadas', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      sortByLibrosCompletados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'librosCompletados', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      sortByLibrosCompletadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'librosCompletados', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByLibrosLeidos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'librosLeidos', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      sortByLibrosLeidosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'librosLeidos', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByMinutosLectura() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minutosLectura', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      sortByMinutosLecturaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minutosLectura', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByNotasCreadas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notasCreadas', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      sortByNotasCreadasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notasCreadas', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByPaginasLeidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginasLeidas', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      sortByPaginasLeidasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginasLeidas', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByPeriodo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'periodo', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByPeriodoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'periodo', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> sortByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension EstadisticaQuerySortThenBy
    on QueryBuilder<Estadistica, Estadistica, QSortThenBy> {
  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByCitasCreadas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citasCreadas', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      thenByCitasCreadasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'citasCreadas', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fecha', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      thenByLibrosCompletados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'librosCompletados', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      thenByLibrosCompletadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'librosCompletados', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByLibrosLeidos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'librosLeidos', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      thenByLibrosLeidosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'librosLeidos', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByMinutosLectura() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minutosLectura', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      thenByMinutosLecturaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minutosLectura', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByNotasCreadas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notasCreadas', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      thenByNotasCreadasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notasCreadas', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByPaginasLeidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginasLeidas', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy>
      thenByPaginasLeidasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paginasLeidas', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByPeriodo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'periodo', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByPeriodoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'periodo', Sort.desc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByUsuarioId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.asc);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QAfterSortBy> thenByUsuarioIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuarioId', Sort.desc);
    });
  }
}

extension EstadisticaQueryWhereDistinct
    on QueryBuilder<Estadistica, Estadistica, QDistinct> {
  QueryBuilder<Estadistica, Estadistica, QDistinct> distinctByCitasCreadas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'citasCreadas');
    });
  }

  QueryBuilder<Estadistica, Estadistica, QDistinct> distinctByFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fecha');
    });
  }

  QueryBuilder<Estadistica, Estadistica, QDistinct>
      distinctByLibrosCompletados() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'librosCompletados');
    });
  }

  QueryBuilder<Estadistica, Estadistica, QDistinct> distinctByLibrosLeidos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'librosLeidos');
    });
  }

  QueryBuilder<Estadistica, Estadistica, QDistinct> distinctByMinutosLectura() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minutosLectura');
    });
  }

  QueryBuilder<Estadistica, Estadistica, QDistinct> distinctByNotasCreadas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notasCreadas');
    });
  }

  QueryBuilder<Estadistica, Estadistica, QDistinct> distinctByPaginasLeidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paginasLeidas');
    });
  }

  QueryBuilder<Estadistica, Estadistica, QDistinct> distinctByPeriodo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'periodo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Estadistica, Estadistica, QDistinct> distinctByUsuarioId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuarioId', caseSensitive: caseSensitive);
    });
  }
}

extension EstadisticaQueryProperty
    on QueryBuilder<Estadistica, Estadistica, QQueryProperty> {
  QueryBuilder<Estadistica, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Estadistica, int, QQueryOperations> citasCreadasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'citasCreadas');
    });
  }

  QueryBuilder<Estadistica, DateTime, QQueryOperations> fechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fecha');
    });
  }

  QueryBuilder<Estadistica, int, QQueryOperations> librosCompletadosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'librosCompletados');
    });
  }

  QueryBuilder<Estadistica, int, QQueryOperations> librosLeidosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'librosLeidos');
    });
  }

  QueryBuilder<Estadistica, int, QQueryOperations> minutosLecturaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minutosLectura');
    });
  }

  QueryBuilder<Estadistica, int, QQueryOperations> notasCreadasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notasCreadas');
    });
  }

  QueryBuilder<Estadistica, int, QQueryOperations> paginasLeidasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paginasLeidas');
    });
  }

  QueryBuilder<Estadistica, String, QQueryOperations> periodoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'periodo');
    });
  }

  QueryBuilder<Estadistica, String, QQueryOperations> usuarioIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuarioId');
    });
  }
}
