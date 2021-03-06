import 'package:json_annotation/json_annotation.dart';

import 'user_membership.dart';

part 'group_application_list_request.g.dart';

@JsonSerializable()
class GroupApplicationListRequest{
	
	GroupApplicationListRequest();

	factory GroupApplicationListRequest.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupApplicationListRequestFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'memberships')
	List<UserMembership> memberships;
	@JsonKey(name:'message')
	String message;

	
	
	Map<String, dynamic> toJson() => _$GroupApplicationListRequestToJson(this);
}