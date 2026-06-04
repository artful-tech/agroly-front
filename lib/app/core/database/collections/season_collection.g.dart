// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSeasonCollectionCollection on Isar {
  IsarCollection<SeasonCollection> get seasonCollections => this.collection();
}

const SeasonCollectionSchema = CollectionSchema(
  name: r'SeasonCollection',
  id: -8229825445036529688,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'cropId': PropertySchema(id: 1, name: r'cropId', type: IsarType.string),
    r'deletedAt': PropertySchema(
      id: 2,
      name: r'deletedAt',
      type: IsarType.dateTime,
    ),
    r'harvestAt': PropertySchema(
      id: 3,
      name: r'harvestAt',
      type: IsarType.dateTime,
    ),
    r'isPendingUpdate': PropertySchema(
      id: 4,
      name: r'isPendingUpdate',
      type: IsarType.bool,
    ),
    r'isSynced': PropertySchema(id: 5, name: r'isSynced', type: IsarType.bool),
    r'photo': PropertySchema(id: 6, name: r'photo', type: IsarType.string),
    r'plantedAt': PropertySchema(
      id: 7,
      name: r'plantedAt',
      type: IsarType.dateTime,
    ),
    r'plotId': PropertySchema(id: 8, name: r'plotId', type: IsarType.string),
    r'status': PropertySchema(
      id: 9,
      name: r'status',
      type: IsarType.byte,
      enumMap: _SeasonCollectionstatusEnumValueMap,
    ),
    r'updatedAt': PropertySchema(
      id: 10,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(id: 11, name: r'uuid', type: IsarType.string),
  },

  estimateSize: _seasonCollectionEstimateSize,
  serialize: _seasonCollectionSerialize,
  deserialize: _seasonCollectionDeserialize,
  deserializeProp: _seasonCollectionDeserializeProp,
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
    r'plotId': IndexSchema(
      id: 5570027824975125870,
      name: r'plotId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'plotId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'cropId': IndexSchema(
      id: 2044275469081633378,
      name: r'cropId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'cropId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {
    r'plot': LinkSchema(
      id: 9192795363715867640,
      name: r'plot',
      target: r'PlotCollection',
      single: true,
    ),
    r'crop': LinkSchema(
      id: 2465009597301860408,
      name: r'crop',
      target: r'CropCollection',
      single: true,
    ),
  },
  embeddedSchemas: {},

  getId: _seasonCollectionGetId,
  getLinks: _seasonCollectionGetLinks,
  attach: _seasonCollectionAttach,
  version: '3.3.1',
);

int _seasonCollectionEstimateSize(
  SeasonCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cropId.length * 3;
  {
    final value = object.photo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.plotId.length * 3;
  {
    final value = object.uuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _seasonCollectionSerialize(
  SeasonCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.cropId);
  writer.writeDateTime(offsets[2], object.deletedAt);
  writer.writeDateTime(offsets[3], object.harvestAt);
  writer.writeBool(offsets[4], object.isPendingUpdate);
  writer.writeBool(offsets[5], object.isSynced);
  writer.writeString(offsets[6], object.photo);
  writer.writeDateTime(offsets[7], object.plantedAt);
  writer.writeString(offsets[8], object.plotId);
  writer.writeByte(offsets[9], object.status.index);
  writer.writeDateTime(offsets[10], object.updatedAt);
  writer.writeString(offsets[11], object.uuid);
}

SeasonCollection _seasonCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SeasonCollection();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.cropId = reader.readString(offsets[1]);
  object.deletedAt = reader.readDateTimeOrNull(offsets[2]);
  object.harvestAt = reader.readDateTimeOrNull(offsets[3]);
  object.id = id;
  object.isPendingUpdate = reader.readBool(offsets[4]);
  object.isSynced = reader.readBool(offsets[5]);
  object.photo = reader.readStringOrNull(offsets[6]);
  object.plantedAt = reader.readDateTime(offsets[7]);
  object.plotId = reader.readString(offsets[8]);
  object.status =
      _SeasonCollectionstatusValueEnumMap[reader.readByteOrNull(offsets[9])] ??
      SeasonStatus.planted;
  object.updatedAt = reader.readDateTime(offsets[10]);
  object.uuid = reader.readStringOrNull(offsets[11]);
  return object;
}

P _seasonCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (_SeasonCollectionstatusValueEnumMap[reader.readByteOrNull(
                offset,
              )] ??
              SeasonStatus.planted)
          as P;
    case 10:
      return (reader.readDateTime(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SeasonCollectionstatusEnumValueMap = {
  'planted': 0,
  'growing': 1,
  'harvested': 2,
  'cancelled': 3,
};
const _SeasonCollectionstatusValueEnumMap = {
  0: SeasonStatus.planted,
  1: SeasonStatus.growing,
  2: SeasonStatus.harvested,
  3: SeasonStatus.cancelled,
};

Id _seasonCollectionGetId(SeasonCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _seasonCollectionGetLinks(SeasonCollection object) {
  return [object.plot, object.crop];
}

void _seasonCollectionAttach(
  IsarCollection<dynamic> col,
  Id id,
  SeasonCollection object,
) {
  object.id = id;
  object.plot.attach(col, col.isar.collection<PlotCollection>(), r'plot', id);
  object.crop.attach(col, col.isar.collection<CropCollection>(), r'crop', id);
}

extension SeasonCollectionByIndex on IsarCollection<SeasonCollection> {
  Future<SeasonCollection?> getByUuid(String? uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  SeasonCollection? getByUuidSync(String? uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String? uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String? uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<SeasonCollection?>> getAllByUuid(List<String?> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<SeasonCollection?> getAllByUuidSync(List<String?> uuidValues) {
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

  Future<Id> putByUuid(SeasonCollection object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(SeasonCollection object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<SeasonCollection> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(
    List<SeasonCollection> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension SeasonCollectionQueryWhereSort
    on QueryBuilder<SeasonCollection, SeasonCollection, QWhere> {
  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SeasonCollectionQueryWhere
    on QueryBuilder<SeasonCollection, SeasonCollection, QWhereClause> {
  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause> idBetween(
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
  uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'uuid', value: [null]),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
  uuidEqualTo(String? uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'uuid', value: [uuid]),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
  plotIdEqualTo(String plotId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'plotId', value: [plotId]),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
  plotIdNotEqualTo(String plotId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'plotId',
                lower: [],
                upper: [plotId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'plotId',
                lower: [plotId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'plotId',
                lower: [plotId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'plotId',
                lower: [],
                upper: [plotId],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
  cropIdEqualTo(String cropId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'cropId', value: [cropId]),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterWhereClause>
  cropIdNotEqualTo(String cropId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'cropId',
                lower: [],
                upper: [cropId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'cropId',
                lower: [cropId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'cropId',
                lower: [cropId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'cropId',
                lower: [],
                upper: [cropId],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension SeasonCollectionQueryFilter
    on QueryBuilder<SeasonCollection, SeasonCollection, QFilterCondition> {
  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'cropId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'cropId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'cropId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'cropId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'cropId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'cropId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'cropId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'cropId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'cropId', value: ''),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'cropId', value: ''),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  deletedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'deletedAt'),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  deletedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'deletedAt'),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  deletedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'deletedAt', value: value),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  harvestAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'harvestAt'),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  harvestAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'harvestAt'),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  harvestAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'harvestAt', value: value),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  harvestAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'harvestAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  harvestAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'harvestAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  harvestAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'harvestAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  idBetween(
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  isPendingUpdateEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isPendingUpdate', value: value),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  isSyncedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isSynced', value: value),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  photoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'photo'),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  photoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'photo'),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  photoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'photo', value: ''),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  photoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'photo', value: ''),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plantedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'plantedAt', value: value),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plantedAtGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'plantedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plantedAtLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'plantedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plantedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'plantedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'plotId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'plotId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'plotId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'plotId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'plotId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'plotId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'plotId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'plotId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'plotId', value: ''),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'plotId', value: ''),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  statusEqualTo(SeasonStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'status', value: value),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  statusGreaterThan(SeasonStatus value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'status',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  statusLessThan(SeasonStatus value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'status',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  statusBetween(
    SeasonStatus lower,
    SeasonStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'status',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'uuid'),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  uuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'uuid'),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
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

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'uuid', value: ''),
      );
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'uuid', value: ''),
      );
    });
  }
}

extension SeasonCollectionQueryObject
    on QueryBuilder<SeasonCollection, SeasonCollection, QFilterCondition> {}

extension SeasonCollectionQueryLinks
    on QueryBuilder<SeasonCollection, SeasonCollection, QFilterCondition> {
  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition> plot(
    FilterQuery<PlotCollection> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'plot');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  plotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'plot', 0, true, 0, true);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition> crop(
    FilterQuery<CropCollection> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'crop');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterFilterCondition>
  cropIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'crop', 0, true, 0, true);
    });
  }
}

extension SeasonCollectionQuerySortBy
    on QueryBuilder<SeasonCollection, SeasonCollection, QSortBy> {
  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByCropId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cropId', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByCropIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cropId', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByDeletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByHarvestAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'harvestAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByHarvestAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'harvestAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByIsPendingUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPendingUpdate', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByIsPendingUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPendingUpdate', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy> sortByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByPlantedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantedAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByPlantedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantedAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByPlotId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plotId', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByPlotIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plotId', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension SeasonCollectionQuerySortThenBy
    on QueryBuilder<SeasonCollection, SeasonCollection, QSortThenBy> {
  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByCropId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cropId', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByCropIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cropId', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByDeletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByHarvestAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'harvestAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByHarvestAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'harvestAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByIsPendingUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPendingUpdate', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByIsPendingUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPendingUpdate', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy> thenByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByPlantedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantedAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByPlantedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantedAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByPlotId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plotId', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByPlotIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plotId', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QAfterSortBy>
  thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension SeasonCollectionQueryWhereDistinct
    on QueryBuilder<SeasonCollection, SeasonCollection, QDistinct> {
  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct> distinctByCropId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cropId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct>
  distinctByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedAt');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct>
  distinctByHarvestAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'harvestAt');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct>
  distinctByIsPendingUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPendingUpdate');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct>
  distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct> distinctByPhoto({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct>
  distinctByPlantedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plantedAt');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct> distinctByPlotId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plotId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct>
  distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<SeasonCollection, SeasonCollection, QDistinct> distinctByUuid({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension SeasonCollectionQueryProperty
    on QueryBuilder<SeasonCollection, SeasonCollection, QQueryProperty> {
  QueryBuilder<SeasonCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SeasonCollection, DateTime, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<SeasonCollection, String, QQueryOperations> cropIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cropId');
    });
  }

  QueryBuilder<SeasonCollection, DateTime?, QQueryOperations>
  deletedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedAt');
    });
  }

  QueryBuilder<SeasonCollection, DateTime?, QQueryOperations>
  harvestAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'harvestAt');
    });
  }

  QueryBuilder<SeasonCollection, bool, QQueryOperations>
  isPendingUpdateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPendingUpdate');
    });
  }

  QueryBuilder<SeasonCollection, bool, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<SeasonCollection, String?, QQueryOperations> photoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photo');
    });
  }

  QueryBuilder<SeasonCollection, DateTime, QQueryOperations>
  plantedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plantedAt');
    });
  }

  QueryBuilder<SeasonCollection, String, QQueryOperations> plotIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plotId');
    });
  }

  QueryBuilder<SeasonCollection, SeasonStatus, QQueryOperations>
  statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<SeasonCollection, DateTime, QQueryOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<SeasonCollection, String?, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
