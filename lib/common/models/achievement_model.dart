import 'package:game_it_out_v2/common/exports/exports.dart';

class AchievementModel {
  String title;
  bool isCompleted;
  String description;
  double exp;
  int lvl;
  int completedTasksNumber;
  int deletedTasksNumber;
  int createdTasksNumber;
  AchievementModel({
    required this.title,
    required this.description,
    this.isCompleted = false,
    this.exp = AppConsts.startValueDouble,
    this.completedTasksNumber = AppConsts.startValueInt,
    this.createdTasksNumber = AppConsts.startValueInt,
    this.deletedTasksNumber = AppConsts.startValueInt,
    this.lvl = AppConsts.startValueInt,
  });
}
