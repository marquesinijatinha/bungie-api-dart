// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_loadout_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityLoadoutRequirement _$DestinyActivityLoadoutRequirementFromJson(
    Map<String, dynamic> json) {
  return DestinyActivityLoadoutRequirement()
    ..equipmentSlotHash = json['equipmentSlotHash'] as int
    ..allowedEquippedItemHashes = (json['allowedEquippedItemHashes'] as List)
        ?.map((e) => e as int)
        ?.toList()
    ..allowedWeaponSubTypes = (json['allowedWeaponSubTypes'] as List)
        ?.map((e) => _$enumDecodeNullable(_$DestinyItemSubTypeEnumMap, e))
        ?.toList();
}

Map<String, dynamic> _$DestinyActivityLoadoutRequirementToJson(
        DestinyActivityLoadoutRequirement instance) =>
    <String, dynamic>{
      'equipmentSlotHash': instance.equipmentSlotHash,
      'allowedEquippedItemHashes': instance.allowedEquippedItemHashes,
      'allowedWeaponSubTypes': instance.allowedWeaponSubTypes
          ?.map((e) => _$DestinyItemSubTypeEnumMap[e])
          ?.toList(),
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

const _$DestinyItemSubTypeEnumMap = {
  DestinyItemSubType.None: 0,
  DestinyItemSubType.Crucible: 1,
  DestinyItemSubType.Vanguard: 2,
  DestinyItemSubType.Exotic: 5,
  DestinyItemSubType.AutoRifle: 6,
  DestinyItemSubType.Shotgun: 7,
  DestinyItemSubType.Machinegun: 8,
  DestinyItemSubType.HandCannon: 9,
  DestinyItemSubType.RocketLauncher: 10,
  DestinyItemSubType.FusionRifle: 11,
  DestinyItemSubType.SniperRifle: 12,
  DestinyItemSubType.PulseRifle: 13,
  DestinyItemSubType.ScoutRifle: 14,
  DestinyItemSubType.Crm: 16,
  DestinyItemSubType.Sidearm: 17,
  DestinyItemSubType.Sword: 18,
  DestinyItemSubType.Mask: 19,
  DestinyItemSubType.Shader: 20,
  DestinyItemSubType.Ornament: 21,
  DestinyItemSubType.FusionRifleLine: 22,
  DestinyItemSubType.GrenadeLauncher: 23,
  DestinyItemSubType.SubmachineGun: 24,
  DestinyItemSubType.TraceRifle: 25,
  DestinyItemSubType.HelmetArmor: 26,
  DestinyItemSubType.GauntletsArmor: 27,
  DestinyItemSubType.ChestArmor: 28,
  DestinyItemSubType.LegArmor: 29,
  DestinyItemSubType.ClassArmor: 30,
  DestinyItemSubType.Bow: 31,
};