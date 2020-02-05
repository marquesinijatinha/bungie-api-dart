// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_item_perks_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyItemPerksComponent
    _$SingleComponentResponseOfDestinyItemPerksComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyItemPerksComponent()
    ..data = json['data'] == null
        ? null
        : DestinyItemPerksComponent.fromJson(
            json['data'] as Map<String, dynamic>)
    ..privacy = _$enumDecodeNullable(
        _$ComponentPrivacySettingEnumMap, json['privacy'],
        unknownValue: ComponentPrivacySetting.None);
}

Map<String, dynamic> _$SingleComponentResponseOfDestinyItemPerksComponentToJson(
        SingleComponentResponseOfDestinyItemPerksComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': _$ComponentPrivacySettingEnumMap[instance.privacy],
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

const _$ComponentPrivacySettingEnumMap = {
  ComponentPrivacySetting.None: 0,
  ComponentPrivacySetting.Public: 1,
  ComponentPrivacySetting.Private: 2,
};