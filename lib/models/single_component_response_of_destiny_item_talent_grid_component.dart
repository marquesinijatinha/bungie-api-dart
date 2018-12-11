import 'destiny_item_talent_grid_component.dart';
class SingleComponentResponseOfDestinyItemTalentGridComponent{
	DestinyItemTalentGridComponent data;
	int privacy;
	SingleComponentResponseOfDestinyItemTalentGridComponent(
		DestinyItemTalentGridComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyItemTalentGridComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyItemTalentGridComponent(
				DestinyItemTalentGridComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyItemTalentGridComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyItemTalentGridComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyItemTalentGridComponent.fromJson(item));
    });
    return list;
	}
}