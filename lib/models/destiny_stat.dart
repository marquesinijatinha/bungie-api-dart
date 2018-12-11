class DestinyStat{
	int statHash;
	int value;
	int maximumValue;
	DestinyStat(
		int this.statHash,
		int this.value,
		int this.maximumValue,
	);

	static DestinyStat fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStat(
				data['statHash'],
				data['value'],
				data['maximumValue'],
		);
	}

	static List<DestinyStat> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyStat> list = new List();
    data.forEach((item) {
      list.add(DestinyStat.fromJson(item));
    });
    return list;
	}
}