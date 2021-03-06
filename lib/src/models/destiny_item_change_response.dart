import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_response.dart';
import 'destiny_item_component.dart';

part 'destiny_item_change_response.g.dart';

@JsonSerializable()
class DestinyItemChangeResponse{
	
	DestinyItemChangeResponse();

	factory DestinyItemChangeResponse.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemChangeResponseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The response object for retrieving an individual instanced item. None of these components are relevant for an item that doesn't have an "itemInstanceId": for those, get your information from the DestinyInventoryDefinition.
	@JsonKey(name:'item')
	DestinyItemResponse item;
	/// Items that appeared in the inventory possibly as a result of an action.
	@JsonKey(name:'addedInventoryItems')
	List<DestinyItemComponent> addedInventoryItems;
	/// Items that disappeared from the inventory possibly as a result of an action.
	@JsonKey(name:'removedInventoryItems')
	List<DestinyItemComponent> removedInventoryItems;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemChangeResponseToJson(this);
}