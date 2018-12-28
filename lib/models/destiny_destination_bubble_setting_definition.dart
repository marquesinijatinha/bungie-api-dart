import 'destiny_display_properties_definition.dart';

/* Human readable data about the bubble. Combine with DestinyBubbleDefinition - see DestinyDestinationDefinition.bubbleSettings for more information.
DEPRECATED - Just use bubbles. */
class DestinyDestinationBubbleSettingDefinition{
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyDestinationBubbleSettingDefinition(
		this.displayProperties,
	);

	static DestinyDestinationBubbleSettingDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyDestinationBubbleSettingDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
		);
	}

	static List<DestinyDestinationBubbleSettingDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyDestinationBubbleSettingDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyDestinationBubbleSettingDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
		return data;
	}
}