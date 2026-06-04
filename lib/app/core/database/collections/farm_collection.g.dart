// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFarmCollectionCollection on Isar {
  IsarCollection<FarmCollection> get farmCollections => this.collection();
}

const FarmCollectionSchema = CollectionSchema(
  name: r'FarmCollection',
  id: -7241034881823454943,
  properties: {
    r'addressId': PropertySchema(
      id: 0,
      name: r'addressId',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'deletedAt': PropertySchema(
      id: 2,
      name: r'deletedAt',
      type: IsarType.dateTime,
    ),
    r'isPendingUpdate': PropertySchema(
      id: 3,
      name: r'isPendingUpdate',
      type: IsarType.bool,
    ),
    r'isSynced': PropertySchema(id: 4, name: r'isSynced', type: IsarType.bool),
    r'name': PropertySchema(id: 5, name: r'name', type: IsarType.string),
    r'observation': PropertySchema(
      id: 6,
      name: r'observation',
      type: IsarType.string,
    ),
    r'photo': PropertySchema(id: 7, name: r'photo', type: IsarType.string),
    r'resume': PropertySchema(id: 8, name: r'resume', type: IsarType.string),
    r'totalArea': PropertySchema(
      id: 9,
      name: r'totalArea',
      type: IsarType.double,
    ),
    r'unity': PropertySchema(id: 10, name: r'unity', type: IsarType.string),
    r'updatedAt': PropertySchema(
      id: 11,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(id: 12, name: r'uuid', type: IsarType.string),
  },

  estimateSize: _farmCollectionEstimateSize,
  serialize: _farmCollectionSerialize,
  deserialize: _farmCollectionDeserialize,
  deserializeProp: _farmCollectionDeserializeProp,
  idName: r'id',
  indexes: {
    r'uuid': IndexSchema(
      id: 2134397340427724972,
      name: r'uuid',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'uuid',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'addressId': IndexSchema(
      id: -4281582689294981551,
      name: r'addressId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'addressId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {
    r'address': LinkSchema(
      id: 365099323432589398,
      name: r'address',
      target: r'AddressCollection',
      single: true,
    ),
    r'peoples': LinkSchema(
      id: 7158532342570968937,
      name: r'peoples',
      target: r'PeopleCollection',
      single: false,
    ),
  },
  embeddedSchemas: {},

  getId: _farmCollectionGetId,
  getLinks: _farmCollectionGetLinks,
  attach: _farmCollectionAttach,
  version: '3.3.2',
);

int _farmCollectionEstimateSize(
  FarmCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addressId.length * 3;
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.observation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.photo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.resume;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.unity.length * 3;
  {
    final value = object.uuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _farmCollectionSerialize(
  FarmCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addressId);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeDateTime(offsets[2], object.deletedAt);
  writer.writeBool(offsets[3], object.isPendingUpdate);
  writer.writeBool(offsets[4], object.isSynced);
  writer.writeString(offsets[5], object.name);
  writer.writeString(offsets[6], object.observation);
  writer.writeString(offsets[7], object.photo);
  writer.writeString(offsets[8], object.resume);
  writer.writeDouble(offsets[9], object.totalArea);
  writer.writeString(offsets[10], object.unity);
  writer.writeDateTime(offsets[11], object.updatedAt);
  writer.writeString(offsets[12], object.uuid);
}

FarmCollection _farmCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FarmCollection();
  object.addressId = reader.readString(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.deletedAt = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.isPendingUpdate = reader.readBool(offsets[3]);
  object.isSynced = reader.readBool(offsets[4]);
  object.name = reader.readString(offsets[5]);
  object.observation = reader.readStringOrNull(offsets[6]);
  object.photo = reader.readStringOrNull(offsets[7]);
  object.resume = reader.readStringOrNull(offsets[8]);
  object.totalArea = reader.readDouble(offsets[9]);
  object.unity = reader.readString(offsets[10]);
  object.updatedAt = reader.readDateTime(offsets[11]);
  object.uuid = reader.readStringOrNull(offsets[12]);
  return object;
}

P _farmCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDateTime(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _farmCollectionGetId(FarmCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _farmCollectionGetLinks(FarmCollection object) {
  return [object.address, object.peoples];
}

void _farmCollectionAttach(
  IsarCollection<dynamic> col,
  Id id,
  FarmCollection object,
) {
  object.id = id;
  object.address.attach(
    col,
    col.isar.collection<AddressCollection>(),
    r'address',
    id,
  );
  object.peoples.attach(
    col,
    col.isar.collection<PeopleCollection>(),
    r'peoples',
    id,
  );
}

extension FarmCollectionByIndex on IsarCollection<FarmCollection> {
  Future<FarmCollection?> getByUuid(String? uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  FarmCollection? getByUuidSync(String? uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String? uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String? uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<FarmCollection?>> getAllByUuid(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<FarmCollection?> getAllByUuidSync(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'uuid', values);
  }

  Future<int> deleteAllByUuid(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'uuid', values);
  }

  int deleteAllByUuidSync(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'uuid', values);
  }

  Future<Id> putByUuid(FarmCollection object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(FarmCollection object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<FarmCollection> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(
    List<FarmCollection> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }

  Future<FarmCollection?> getByAddressId(String addressId) {
    return getByIndex(r'addressId', [addressId]);
  }

  FarmCollection? getByAddressIdSync(String addressId) {
    return getByIndexSync(r'addressId', [addressId]);
  }

  Future<bool> deleteByAddressId(String addressId) {
    return deleteByIndex(r'addressId', [addressId]);
  }

  bool deleteByAddressIdSync(String addressId) {
    return deleteByIndexSync(r'addressId', [addressId]);
  }

  Future<List<FarmCollection?>> getAllByAddressId(
    List<String> addressIdValues,
  ) {
    final values = addressIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'addressId', values);
  }

  List<FarmCollection?> getAllByAddressIdSync(List<String> addressIdValues) {
    final values = addressIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'addressId', values);
  }

  Future<int> deleteAllByAddressId(List<String> addressIdValues) {
    final values = addressIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'addressId', values);
  }

  int deleteAllByAddressIdSync(List<String> addressIdValues) {
    final values = addressIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'addressId', values);
  }

  Future<Id> putByAddressId(FarmCollection object) {
    return putByIndex(r'addressId', object);
  }

  Id putByAddressIdSync(FarmCollection object, {bool saveLinks = true}) {
    return putByIndexSync(r'addressId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByAddressId(List<FarmCollection> objects) {
    return putAllByIndex(r'addressId', objects);
  }

  List<Id> putAllByAddressIdSync(
    List<FarmCollection> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'addressId', objects, saveLinks: saveLinks);
  }
}

extension FarmCollectionQueryWhereSort
    on QueryBuilder<FarmCollection, FarmCollection, QWhere> {
  QueryBuilder<FarmCollection, FarmCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FarmCollectionQueryWhere
    on QueryBuilder<FarmCollection, FarmCollection, QWhereClause> {
  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
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

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause> uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'uuid', value: [null]),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause>
  uuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'uuid',
          lower: [null],
          includeLower: false,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause> uuidEqualTo(
    String? uuid,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'uuid', value: [uuid]),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause>
  uuidNotEqualTo(String? uuid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'uuid',
                lower: [],
                upper: [uuid],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'uuid',
                lower: [uuid],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'uuid',
                lower: [uuid],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'uuid',
                lower: [],
                upper: [uuid],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause>
  addressIdEqualTo(String addressId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'addressId', value: [addressId]),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterWhereClause>
  addressIdNotEqualTo(String addressId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'addressId',
                lower: [],
                upper: [addressId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'addressId',
                lower: [addressId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'addressId',
                lower: [addressId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'addressId',
                lower: [],
                upper: [addressId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension FarmCollectionQueryFilter
    on QueryBuilder<FarmCollection, FarmCollection, QFilterCondition> {
  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'addressId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'addressId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'addressId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'addressId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'addressId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'addressId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'addressId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'addressId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'addressId', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'addressId', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  createdAtGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  createdAtLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  deletedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'deletedAt'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  deletedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'deletedAt'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  deletedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'deletedAt', value: value),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  deletedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'deletedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  deletedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'deletedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  deletedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'deletedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  isPendingUpdateEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isPendingUpdate', value: value),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  isSyncedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isSynced', value: value),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'observation'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'observation'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'observation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'observation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'observation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'observation',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'observation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'observation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'observation',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'observation',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'observation', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  observationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'observation', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'photo'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'photo'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'photo',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'photo',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'photo',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'photo',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'photo',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'photo',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'photo',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'photo',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'photo', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  photoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'photo', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'resume'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'resume'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'resume',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'resume',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'resume',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'resume',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'resume',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'resume',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'resume',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'resume',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'resume', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  resumeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'resume', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  totalAreaEqualTo(double value, {double epsilon = Query.epsilon}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'totalArea',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  totalAreaGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'totalArea',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  totalAreaLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'totalArea',
          value: value,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  totalAreaBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'totalArea',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,

          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'unity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'unity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'unity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'unity',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'unity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'unity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'unity',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'unity',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'unity', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  unityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'unity', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  updatedAtGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  updatedAtLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'updatedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'uuid'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'uuid'),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'uuid',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'uuid',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'uuid',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'uuid',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'uuid',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'uuid',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'uuid',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'uuid',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'uuid', value: ''),
      );
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'uuid', value: ''),
      );
    });
  }
}

extension FarmCollectionQueryObject
    on QueryBuilder<FarmCollection, FarmCollection, QFilterCondition> {}

extension FarmCollectionQueryLinks
    on QueryBuilder<FarmCollection, FarmCollection, QFilterCondition> {
  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition> address(
    FilterQuery<AddressCollection> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'address');
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'address', 0, true, 0, true);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition> peoples(
    FilterQuery<PeopleCollection> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'peoples');
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  peoplesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'peoples', length, true, length, true);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  peoplesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'peoples', 0, true, 0, true);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  peoplesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'peoples', 0, false, 999999, true);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  peoplesLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'peoples', 0, true, length, include);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  peoplesLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'peoples', length, include, 999999, true);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterFilterCondition>
  peoplesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
        r'peoples',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension FarmCollectionQuerySortBy
    on QueryBuilder<FarmCollection, FarmCollection, QSortBy> {
  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByAddressId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressId', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByAddressIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressId', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByDeletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByIsPendingUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPendingUpdate', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByIsPendingUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPendingUpdate', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByObservation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observation', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByObservationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observation', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByResume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resume', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByResumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resume', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByTotalArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalArea', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByTotalAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalArea', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByUnity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unity', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByUnityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unity', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension FarmCollectionQuerySortThenBy
    on QueryBuilder<FarmCollection, FarmCollection, QSortThenBy> {
  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByAddressId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressId', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByAddressIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addressId', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByDeletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByIsPendingUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPendingUpdate', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByIsPendingUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPendingUpdate', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByObservation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observation', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByObservationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observation', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByResume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resume', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByResumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resume', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByTotalArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalArea', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByTotalAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalArea', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByUnity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unity', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByUnityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unity', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension FarmCollectionQueryWhereDistinct
    on QueryBuilder<FarmCollection, FarmCollection, QDistinct> {
  QueryBuilder<FarmCollection, FarmCollection, QDistinct> distinctByAddressId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addressId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct>
  distinctByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedAt');
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct>
  distinctByIsPendingUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPendingUpdate');
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct>
  distinctByObservation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct> distinctByPhoto({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct> distinctByResume({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resume', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct>
  distinctByTotalArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalArea');
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct> distinctByUnity({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unity', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<FarmCollection, FarmCollection, QDistinct> distinctByUuid({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension FarmCollectionQueryProperty
    on QueryBuilder<FarmCollection, FarmCollection, QQueryProperty> {
  QueryBuilder<FarmCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FarmCollection, String, QQueryOperations> addressIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addressId');
    });
  }

  QueryBuilder<FarmCollection, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<FarmCollection, DateTime?, QQueryOperations>
  deletedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedAt');
    });
  }

  QueryBuilder<FarmCollection, bool, QQueryOperations>
  isPendingUpdateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPendingUpdate');
    });
  }

  QueryBuilder<FarmCollection, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<FarmCollection, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<FarmCollection, String?, QQueryOperations>
  observationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observation');
    });
  }

  QueryBuilder<FarmCollection, String?, QQueryOperations> photoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photo');
    });
  }

  QueryBuilder<FarmCollection, String?, QQueryOperations> resumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resume');
    });
  }

  QueryBuilder<FarmCollection, double, QQueryOperations> totalAreaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalArea');
    });
  }

  QueryBuilder<FarmCollection, String, QQueryOperations> unityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unity');
    });
  }

  QueryBuilder<FarmCollection, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<FarmCollection, String?, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
