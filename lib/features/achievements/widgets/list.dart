import 'package:game_it_out_v2/common/models/achievement_model.dart';

class AList {
  static List<AchievementModel> aList = [
    AchievementModel(
      title: 'Toddler',
      description: 'Reach 200 exp',
      exp: 200,
    ),
    AchievementModel(
      title: 'Tap Tap Tap',
      description: 'Reach lvl 5',
      lvl: 5,
    ),
    AchievementModel(
      title: 'Baby steps',
      description: 'Reach 1 000 exp',
      exp: 1000,
    ),
    AchievementModel(
      title: 'Just started',
      description: 'Completed 10 tasks',
      completedTasksNumber: 10,
    ),
    AchievementModel(
      title: 'Creator',
      description: 'Create 5 tasks',
      createdTasksNumber: 5,
    ),
  ];
}
