import '../models/entity_action_result.dart';
import '../enums/platform_error_codes.dart';

import 'package:json_annotation/json_annotation.dart';
part 'list_of_entity_action_result_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class ListOfEntityActionResultResponse{
	ListOfEntityActionResultResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory ListOfEntityActionResultResponse.fromJson(Map<String, dynamic> json) => _$ListOfEntityActionResultResponseFromJson(json);
	
	
	@JsonKey(name:'Response')
	List<EntityActionResult> response;
	
	@JsonKey(name:'ErrorCode')
	PlatformErrorCodes errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	@JsonKey(name:'Message')
	String message;
	
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;

	Map<String, dynamic> toJson() => _$ListOfEntityActionResultResponseToJson(this);
}