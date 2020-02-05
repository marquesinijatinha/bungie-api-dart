// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupQuery _$GroupQueryFromJson(Map<String, dynamic> json) {
  return GroupQuery()
    ..name = json['name'] as String
    ..groupType = _$enumDecodeNullable(_$GroupTypeEnumMap, json['groupType'],
        unknownValue: GroupType.General)
    ..creationDate = _$enumDecodeNullable(
        _$GroupDateRangeEnumMap, json['creationDate'],
        unknownValue: GroupDateRange.All)
    ..sortBy = _$enumDecodeNullable(_$GroupSortByEnumMap, json['sortBy'],
        unknownValue: GroupSortBy.Name)
    ..groupMemberCountFilter = json['groupMemberCountFilter'] as int
    ..localeFilter = json['localeFilter'] as String
    ..tagText = json['tagText'] as String
    ..itemsPerPage = json['itemsPerPage'] as int
    ..currentPage = json['currentPage'] as int
    ..requestContinuationToken = json['requestContinuationToken'] as String;
}

Map<String, dynamic> _$GroupQueryToJson(GroupQuery instance) =>
    <String, dynamic>{
      'name': instance.name,
      'groupType': _$GroupTypeEnumMap[instance.groupType],
      'creationDate': _$GroupDateRangeEnumMap[instance.creationDate],
      'sortBy': _$GroupSortByEnumMap[instance.sortBy],
      'groupMemberCountFilter': instance.groupMemberCountFilter,
      'localeFilter': instance.localeFilter,
      'tagText': instance.tagText,
      'itemsPerPage': instance.itemsPerPage,
      'currentPage': instance.currentPage,
      'requestContinuationToken': instance.requestContinuationToken,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GroupTypeEnumMap = {
  GroupType.General: 0,
  GroupType.Clan: 1,
};

const _$GroupDateRangeEnumMap = {
  GroupDateRange.All: 0,
  GroupDateRange.PastDay: 1,
  GroupDateRange.PastWeek: 2,
  GroupDateRange.PastMonth: 3,
  GroupDateRange.PastYear: 4,
};

const _$GroupSortByEnumMap = {
  GroupSortBy.Name: 0,
  GroupSortBy.Date: 1,
  GroupSortBy.Popularity: 2,
  GroupSortBy.Id: 3,
};