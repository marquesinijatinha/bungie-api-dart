import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_talent_grid_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_talent_grid_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent{
	
	DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemTalentGridComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponentToJson(this);
}