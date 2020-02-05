import 'package:json_annotation/json_annotation.dart';


part 'destiny_art_dye_reference.g.dart';

@JsonSerializable()
class DestinyArtDyeReference{
	
	DestinyArtDyeReference();

	factory DestinyArtDyeReference.fromJson(Map<String, dynamic> json) => _$DestinyArtDyeReferenceFromJson(json);

	@JsonKey(name:'artDyeChannelHash')
	int artDyeChannelHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyArtDyeReferenceToJson(this);
}