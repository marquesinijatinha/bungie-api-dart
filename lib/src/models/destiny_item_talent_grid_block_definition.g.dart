// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_talent_grid_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemTalentGridBlockDefinition
    _$DestinyItemTalentGridBlockDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyItemTalentGridBlockDefinition()
    ..talentGridHash = json['talentGridHash'] as int
    ..itemDetailString = json['itemDetailString'] as String
    ..buildName = json['buildName'] as String
    ..hudDamageType = _$enumDecodeNullable(
        _$DamageTypeEnumMap, json['hudDamageType'],
        unknownValue: DamageType.ProtectedInvalidEnumValue)
    ..hudIcon = json['hudIcon'] as String;
}

Map<String, dynamic> _$DestinyItemTalentGridBlockDefinitionToJson(
        DestinyItemTalentGridBlockDefinition instance) =>
    <String, dynamic>{
      'talentGridHash': instance.talentGridHash,
      'itemDetailString': instance.itemDetailString,
      'buildName': instance.buildName,
      'hudDamageType': _$DamageTypeEnumMap[instance.hudDamageType],
      'hudIcon': instance.hudIcon,
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

const _$DamageTypeEnumMap = {
  DamageType.None: 0,
  DamageType.Kinetic: 1,
  DamageType.Arc: 2,
  DamageType.Thermal: 3,
  DamageType.Void: 4,
  DamageType.Raid: 5,
  DamageType.Stasis: 6,
  DamageType.ProtectedInvalidEnumValue: 999999999,
};
