import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_stats_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_stats_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemStatsComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemStatsComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemStatsComponentToJson(this);
}