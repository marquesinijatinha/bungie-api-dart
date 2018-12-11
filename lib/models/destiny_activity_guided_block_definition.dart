class DestinyActivityGuidedBlockDefinition{
	int guidedMaxLobbySize;
	int guidedMinLobbySize;
	int guidedDisbandCount;
	DestinyActivityGuidedBlockDefinition(
		int this.guidedMaxLobbySize,
		int this.guidedMinLobbySize,
		int this.guidedDisbandCount,
	);

	static DestinyActivityGuidedBlockDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGuidedBlockDefinition(
				data['guidedMaxLobbySize'],
				data['guidedMinLobbySize'],
				data['guidedDisbandCount'],
		);
	}

	static List<DestinyActivityGuidedBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGuidedBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGuidedBlockDefinition.fromJson(item));
    });
    return list;
	}
}