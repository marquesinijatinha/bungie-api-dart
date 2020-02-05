import 'package:json_annotation/json_annotation.dart';

import '../enums/awa_user_selection.dart';

part 'awa_user_response.g.dart';

@JsonSerializable()
class AwaUserResponse{
	
	AwaUserResponse();

	factory AwaUserResponse.fromJson(Map<String, dynamic> json) => _$AwaUserResponseFromJson(json);

	/// Indication of the selection the user has made (Approving or rejecting the action)
	@JsonKey(name:'selection',unknownEnumValue:AwaUserSelection.None)
	AwaUserSelection selection;
	/// Correlation ID of the request
	@JsonKey(name:'correlationId')
	String correlationId;
	/// Secret nonce received via the PUSH notification.
	@JsonKey(name:'nonce')
	List<int> nonce;

	
	
	Map<String, dynamic> toJson() => _$AwaUserResponseToJson(this);
}