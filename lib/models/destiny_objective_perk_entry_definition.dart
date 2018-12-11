class DestinyObjectivePerkEntryDefinition{
	int perkHash;
	int style;
	DestinyObjectivePerkEntryDefinition(
		int this.perkHash,
		int this.style,
	);

	static DestinyObjectivePerkEntryDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyObjectivePerkEntryDefinition(
				data['perkHash'],
				data['style'],
		);
	}

	static List<DestinyObjectivePerkEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyObjectivePerkEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectivePerkEntryDefinition.fromJson(item));
    });
    return list;
	}
}