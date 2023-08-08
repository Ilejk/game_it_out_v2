import 'package:game_it_out_v2/common/exports/exports.dart';

class AchievementRepository {
  final CollectionReference achievementsCollection =
      FirebaseFirestore.instance.collection('achievements');

  Future<List<AchievementModel>> fetchAchievements() async {
    try {
      final querySnapshot = await achievementsCollection.get();
      return querySnapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return AchievementModel(
          title: data['title'] ?? AppConsts.empty,
          description: data['desc'] ?? AppConsts.empty,
          isCompleted: data['isCompleted'] ?? false,
          exp: (data['exp'] as num?)?.toDouble() ?? 0.0,
          lvl: data['lvl'] ?? AppConsts.zero.toInt(),
          completedTasksNumber:
              data['completedTasksNumber'] ?? AppConsts.zero.toInt(),
          deletedTasksNumber:
              data['deletedTasksNumber'] ?? AppConsts.zero.toInt(),
          createdTasksNumber:
              data['createdTasksNumber'] ?? AppConsts.zero.toInt(),
        );
      }).toList();
    } catch (e) {
      throw Exception("Failed to fetch achievements");
    }
  }
}
