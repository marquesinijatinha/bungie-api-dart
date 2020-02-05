// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_entry_community_stream.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingEntryCommunityStream _$TrendingEntryCommunityStreamFromJson(
    Map<String, dynamic> json) {
  return TrendingEntryCommunityStream()
    ..image = json['image'] as String
    ..title = json['title'] as String
    ..partnershipIdentifier = json['partnershipIdentifier'] as String
    ..partnershipType = _$enumDecodeNullable(
        _$PartnershipTypeEnumMap, json['partnershipType'],
        unknownValue: PartnershipType.None);
}

Map<String, dynamic> _$TrendingEntryCommunityStreamToJson(
        TrendingEntryCommunityStream instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'partnershipIdentifier': instance.partnershipIdentifier,
      'partnershipType': _$PartnershipTypeEnumMap[instance.partnershipType],
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

const _$PartnershipTypeEnumMap = {
  PartnershipType.None: 0,
  PartnershipType.Twitch: 1,
};