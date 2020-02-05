// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeDefinition _$DestinyPresentationNodeDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyPresentationNodeDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..originalIcon = json['originalIcon'] as String
    ..rootViewIcon = json['rootViewIcon'] as String
    ..nodeType = _$enumDecodeNullable(_$DestinyPresentationNodeTypeEnumMap, json['nodeType'],
        unknownValue: DestinyPresentationNodeType.Default)
    ..scope = _$enumDecodeNullable(_$DestinyScopeEnumMap, json['scope'],
        unknownValue: DestinyScope.Profile)
    ..objectiveHash = json['objectiveHash'] as int
    ..completionRecordHash = json['completionRecordHash'] as int
    ..children = json['children'] == null
        ? null
        : DestinyPresentationNodeChildrenBlock.fromJson(
            json['children'] as Map<String, dynamic>)
    ..displayStyle = _$enumDecodeNullable(
        _$DestinyPresentationDisplayStyleEnumMap, json['displayStyle'],
        unknownValue: DestinyPresentationDisplayStyle.Category)
    ..screenStyle = _$enumDecodeNullable(
        _$DestinyPresentationScreenStyleEnumMap, json['screenStyle'],
        unknownValue: DestinyPresentationScreenStyle.Default)
    ..requirements = json['requirements'] == null
        ? null
        : DestinyPresentationNodeRequirementsBlock.fromJson(
            json['requirements'] as Map<String, dynamic>)
    ..disableChildSubscreenNavigation = json['disableChildSubscreenNavigation'] as bool
    ..parentNodeHashes = (json['parentNodeHashes'] as List)?.map((e) => e as int)?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyPresentationNodeDefinitionToJson(
        DestinyPresentationNodeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'originalIcon': instance.originalIcon,
      'rootViewIcon': instance.rootViewIcon,
      'nodeType': _$DestinyPresentationNodeTypeEnumMap[instance.nodeType],
      'scope': _$DestinyScopeEnumMap[instance.scope],
      'objectiveHash': instance.objectiveHash,
      'completionRecordHash': instance.completionRecordHash,
      'children': instance.children,
      'displayStyle':
          _$DestinyPresentationDisplayStyleEnumMap[instance.displayStyle],
      'screenStyle':
          _$DestinyPresentationScreenStyleEnumMap[instance.screenStyle],
      'requirements': instance.requirements,
      'disableChildSubscreenNavigation':
          instance.disableChildSubscreenNavigation,
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
};

const _$DestinyScopeEnumMap = {
  DestinyScope.Profile: 0,
  DestinyScope.Character: 1,
};

const _$DestinyPresentationDisplayStyleEnumMap = {
  DestinyPresentationDisplayStyle.Category: 0,
  DestinyPresentationDisplayStyle.Badge: 1,
  DestinyPresentationDisplayStyle.Medals: 2,
  DestinyPresentationDisplayStyle.Collectible: 3,
  DestinyPresentationDisplayStyle.Record: 4,
};

const _$DestinyPresentationScreenStyleEnumMap = {
  DestinyPresentationScreenStyle.Default: 0,
  DestinyPresentationScreenStyle.CategorySets: 1,
  DestinyPresentationScreenStyle.Badge: 2,
};