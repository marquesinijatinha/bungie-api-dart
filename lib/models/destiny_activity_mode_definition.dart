import 'destiny_display_properties_definition.dart';

/* This definition represents an "Activity Mode" as it exists in the Historical Stats endpoints. An individual Activity Mode represents a collection of activities that are played in a certain way. For example, Nightfall Strikes are part of a "Nightfall" activity mode, and any activities played as the PVP mode "Clash" are part of the "Clash activity mode.
Activity modes are nested under each other in a hierarchy, so that if you ask for - for example - "AllPvP", you will get any PVP activities that the user has played, regardless of what specific PVP mode was being played. */
class DestinyActivityModeDefinition{
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* If this activity mode has a related PGCR image, this will be the path to said image. */
	String pgcrImage;
	
	/* The Enumeration value for this Activity Mode. Pass this identifier into Stats endpoints to get aggregate stats for this mode. */
	int modeType;
	
	/* The type of play being performed in broad terms (PVP, PVE) */
	int activityModeCategory;
	
	/* If True, this mode has oppositional teams fighting against each other rather than "Free-For-All" or Co-operative modes of play.
Note that Aggregate modes are never marked as team based, even if they happen to be team based at the moment. At any time, an aggregate whose subordinates are only team based could be changed so that one or more aren't team based, and then this boolean won't make much sense (the aggregation would become "sometimes team based"). Let's not deal with that right now. */
	bool isTeamBased;
	
	/* If true, this mode is an aggregation of other, more specific modes rather than being a mode in itself. This includes modes that group Features/Events rather than Gameplay, such as Trials of The Nine: Trials of the Nine being an Event that is interesting to see aggregate data for, but when you play the activities within Trials of the Nine they are more specific activity modes such as Clash. */
	bool isAggregateMode;
	
	/* The hash identifiers of the DestinyActivityModeDefinitions that represent all of the "parent" modes for this mode. For instance, the Nightfall Mode is also a member of AllStrikes and AllPvE. */
	List<int> parentHashes;
	
	/* A Friendly identifier you can use for referring to this Activity Mode. We really only used this in our URLs, so... you know, take that for whatever it's worth. */
	String friendlyName;
	
	/* If this exists, the mode has specific Activities (referred to by the Key) that should instead map to other Activity Modes when they are played. This was useful in D1 for Private Matches, where we wanted to have Private Matches as an activity mode while still referring to the specific mode being played. */
	Map<String, int> activityModeMappings;
	
	/* If FALSE, we want to ignore this type when we're showing activity modes in BNet UI. It will still be returned in case 3rd parties want to use it for any purpose. */
	bool display;
	
	/* The relative ordering of activity modes. */
	int order;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyActivityModeDefinition(
		this.displayProperties,
		this.pgcrImage,
		this.modeType,
		this.activityModeCategory,
		this.isTeamBased,
		this.isAggregateMode,
		this.parentHashes,
		this.friendlyName,
		this.activityModeMappings,
		this.display,
		this.order,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyActivityModeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityModeDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['pgcrImage'],
				data['modeType'],
				data['activityModeCategory'],
				data['isTeamBased'],
				data['isAggregateMode'],
				data['parentHashes'] != null ? data['parentHashes']?.cast<int>() ?? null : null,
				data['friendlyName'],
				data['activityModeMappings'] != null ? Map<String, int>.from(data['activityModeMappings'].map((k, v)=>MapEntry(k, v))) : null,
				data['display'],
				data['order'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyActivityModeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityModeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityModeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['pgcrImage'] = this.pgcrImage;
			data['modeType'] = this.modeType;
			data['activityModeCategory'] = this.activityModeCategory;
			data['isTeamBased'] = this.isTeamBased;
			data['isAggregateMode'] = this.isAggregateMode;
			data['parentHashes'] = this.parentHashes;
			data['friendlyName'] = this.friendlyName;
			data['activityModeMappings'] = this.activityModeMappings;
			data['display'] = this.display;
			data['order'] = this.order;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}