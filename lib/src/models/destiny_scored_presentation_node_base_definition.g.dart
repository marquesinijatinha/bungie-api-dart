// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_scored_presentation_node_base_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyScoredPresentationNodeBaseDefinition
    _$DestinyScoredPresentationNodeBaseDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyScoredPresentationNodeBaseDefinition()
    ..maxCategoryRecordScore = json['maxCategoryRecordScore'] as int
    ..presentationNodeType = _$enumDecodeNullable(
        _$DestinyPresentationNodeTypeEnumMap, json['presentationNodeType'],
        unknownValue: DestinyPresentationNodeType.ProtectedInvalidEnumValue)
    ..traitIds = (json['traitIds'] as List)?.map((e) => e as String)?.toList()
    ..traitHashes =
        (json['traitHashes'] as List)?.map((e) => e as int)?.toList()
    ..parentNodeHashes =
        (json['parentNodeHashes'] as List)?.map((e) => e as int)?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyScoredPresentationNodeBaseDefinitionToJson(
        DestinyScoredPresentationNodeBaseDefinition instance) =>
    <String, dynamic>{
      'maxCategoryRecordScore': instance.maxCategoryRecordScore,
      'presentationNodeType':
          _$DestinyPresentationNodeTypeEnumMap[instance.presentationNodeType],
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'parentNodeHashes': instance.parentNodeHashes,
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

const _$DestinyPresentationNodeTypeEnumMap = {
  DestinyPresentationNodeType.Default: 0,
  DestinyPresentationNodeType.Category: 1,
  DestinyPresentationNodeType.Collectibles: 2,
  DestinyPresentationNodeType.Records: 3,
  DestinyPresentationNodeType.Metric: 4,
  DestinyPresentationNodeType.ProtectedInvalidEnumValue: 999999999,
};
