import 'package:json_annotation/json_annotation.dart';

import 'destiny_profile_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_profile_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileComponent{
	
	SingleComponentResponseOfDestinyProfileComponent();

	factory SingleComponentResponseOfDestinyProfileComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyProfileComponentFromJson(json);

	/// The most essential summary information about a Profile (in Destiny 1, we called these "Accounts").
	@JsonKey(name:'data')
	DestinyProfileComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileComponentToJson(this);
}