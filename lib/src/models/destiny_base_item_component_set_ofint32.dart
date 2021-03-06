import 'package:json_annotation/json_annotation.dart';

import 'dictionary_component_response_ofint32_and_destiny_item_objectives_component.dart';

part 'destiny_base_item_component_set_ofint32.g.dart';

@JsonSerializable()
class DestinyBaseItemComponentSetOfint32{
	
	DestinyBaseItemComponentSetOfint32();

	factory DestinyBaseItemComponentSetOfint32.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyBaseItemComponentSetOfint32FromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'objectives')
	DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent objectives;

	
	
	Map<String, dynamic> toJson() => _$DestinyBaseItemComponentSetOfint32ToJson(this);
}