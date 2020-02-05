import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_categories_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_vendor_categories_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyVendorCategoriesComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponentToJson(this);
}