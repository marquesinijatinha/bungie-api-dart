class DestinyActivityGraphConnectionDefinition{
	int sourceNodeHash;
	int destNodeHash;
	DestinyActivityGraphConnectionDefinition(
		int this.sourceNodeHash,
		int this.destNodeHash,
	);

	static DestinyActivityGraphConnectionDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphConnectionDefinition(
				data['sourceNodeHash'],
				data['destNodeHash'],
		);
	}

	static List<DestinyActivityGraphConnectionDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphConnectionDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphConnectionDefinition.fromJson(item));
    });
    return list;
	}
}