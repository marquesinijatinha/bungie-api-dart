import 'trending_category.dart';
class TrendingCategories{
	List<TrendingCategory> categories;
	TrendingCategories(
		List<TrendingCategory> this.categories,
	);

	static TrendingCategories fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingCategories(
				TrendingCategory.fromList(data['categories']),
		);
	}

	static List<TrendingCategories> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingCategories> list = new List();
    data.forEach((item) {
      list.add(TrendingCategories.fromJson(item));
    });
    return list;
	}
}