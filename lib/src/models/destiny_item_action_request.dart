import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'destiny_item_action_request.g.dart';

@JsonSerializable()
class DestinyItemActionRequest{
	
	DestinyItemActionRequest();

	factory DestinyItemActionRequest.fromJson(Map<String, dynamic> json) => _$DestinyItemActionRequestFromJson(json);

	@JsonKey(name:'itemId')
	String itemId;
	@JsonKey(name:'characterId')
	String characterId;
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.None)
	BungieMembershipType membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemActionRequestToJson(this);
}