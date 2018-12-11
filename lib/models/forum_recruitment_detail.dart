import 'general_user.dart';
class ForumRecruitmentDetail{
	int topicId;
	bool microphoneRequired;
	int intensity;
	int tone;
	bool approved;
	int conversationId;
	int playerSlotsTotal;
	int playerSlotsRemaining;
	List<GeneralUser> fireteam;
	List<int> kickedPlayerIds;
	ForumRecruitmentDetail(
		int this.topicId,
		bool this.microphoneRequired,
		int this.intensity,
		int this.tone,
		bool this.approved,
		int this.conversationId,
		int this.playerSlotsTotal,
		int this.playerSlotsRemaining,
		List<GeneralUser> this.fireteam,
		List<int> this.kickedPlayerIds,
	);

	static ForumRecruitmentDetail fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ForumRecruitmentDetail(
				data['topicId'],
				data['microphoneRequired'],
				data['intensity'],
				data['tone'],
				data['approved'],
				data['conversationId'],
				data['playerSlotsTotal'],
				data['playerSlotsRemaining'],
				GeneralUser.fromList(data['Fireteam']),
				data['kickedPlayerIds'],
		);
	}

	static List<ForumRecruitmentDetail> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ForumRecruitmentDetail> list = new List();
    data.forEach((item) {
      list.add(ForumRecruitmentDetail.fromJson(item));
    });
    return list;
	}
}