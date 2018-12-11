import 'destiny_item_talent_grid_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent{
	Map<DestinyItemTalentGridComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent(
		Map<DestinyItemTalentGridComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent.fromJson(item));
    });
    return list;
	}
}