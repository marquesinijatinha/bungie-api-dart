// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint64_and_destiny_item_plug_objectives_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent
    _$DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyItemPlugObjectivesComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponentToJson(
            DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
