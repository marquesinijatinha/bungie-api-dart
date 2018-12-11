import 'destiny_record_component.dart';
class DestinyRecordsComponent{
	Map<DestinyRecordComponent, dynamic> records;
	DestinyRecordsComponent(
		Map<DestinyRecordComponent, dynamic> this.records,
	);

	static DestinyRecordsComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyRecordsComponent(
				data['records'],
		);
	}

	static List<DestinyRecordsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyRecordsComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordsComponent.fromJson(item));
    });
    return list;
	}
}