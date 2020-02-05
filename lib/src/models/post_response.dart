import 'package:json_annotation/json_annotation.dart';

import '../enums/forum_media_type.dart';
import '../enums/forum_post_popularity.dart';
import 'ignore_response.dart';

part 'post_response.g.dart';

@JsonSerializable()
class PostResponse{
	
	PostResponse();

	factory PostResponse.fromJson(Map<String, dynamic> json) => _$PostResponseFromJson(json);

	@JsonKey(name:'lastReplyTimestamp')
	String lastReplyTimestamp;
	@JsonKey(name:'IsPinned')
	bool isPinned;
	@JsonKey(name:'urlMediaType',unknownEnumValue:ForumMediaType.None)
	ForumMediaType urlMediaType;
	@JsonKey(name:'thumbnail')
	String thumbnail;
	@JsonKey(name:'popularity',unknownEnumValue:ForumPostPopularity.Empty)
	ForumPostPopularity popularity;
	@JsonKey(name:'isActive')
	bool isActive;
	@JsonKey(name:'isAnnouncement')
	bool isAnnouncement;
	@JsonKey(name:'userRating')
	int userRating;
	@JsonKey(name:'userHasRated')
	bool userHasRated;
	@JsonKey(name:'userHasMutedPost')
	bool userHasMutedPost;
	@JsonKey(name:'latestReplyPostId')
	String latestReplyPostId;
	@JsonKey(name:'latestReplyAuthorId')
	String latestReplyAuthorId;
	@JsonKey(name:'ignoreStatus')
	IgnoreResponse ignoreStatus;
	@JsonKey(name:'locale')
	String locale;

	
	
	Map<String, dynamic> toJson() => _$PostResponseToJson(this);
}