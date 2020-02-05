// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_reward_source_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRewardSourceDefinition _$DestinyRewardSourceDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyRewardSourceDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..category = _$enumDecodeNullable(
        _$DestinyRewardSourceCategoryEnumMap, json['category'],
        unknownValue: DestinyRewardSourceCategory.None)
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyRewardSourceDefinitionToJson(
        DestinyRewardSourceDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'category': _$DestinyRewardSourceCategoryEnumMap[instance.category],
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
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

const _$DestinyRewardSourceCategoryEnumMap = {
  DestinyRewardSourceCategory.None: 0,
  DestinyRewardSourceCategory.Activity: 1,
  DestinyRewardSourceCategory.Vendor: 2,
  DestinyRewardSourceCategory.Aggregate: 3,
};