import 'package:json_annotation/json_annotation.dart';

import '../enums/ignore_status.dart';

part 'ignore_response.g.dart';

@JsonSerializable()
class IgnoreResponse{
	
	IgnoreResponse();

	factory IgnoreResponse.fromJson(Map<String, dynamic> json) {
		try{
			return _$IgnoreResponseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'isIgnored')
	bool isIgnored;
	@JsonKey(name:'ignoreFlags')
	IgnoreStatus ignoreFlags;

	
	
	Map<String, dynamic> toJson() => _$IgnoreResponseToJson(this);
}