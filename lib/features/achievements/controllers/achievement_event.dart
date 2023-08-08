part of 'achievement_bloc.dart';

abstract class AchievementEvent extends Equatable {
  const AchievementEvent();
}

class FetchAchievementsEvent extends AchievementEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}
