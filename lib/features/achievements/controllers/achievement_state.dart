part of 'achievement_bloc.dart';

abstract class AchievementState extends Equatable {
  const AchievementState();

  @override
  List<Object?> get props => [];
}

class LoadingState extends AchievementState {
  const LoadingState();

  @override
  List<Object?> get props => [];
}

class ErrorState extends AchievementState {
  final String message;

  const ErrorState(this.message);

  @override
  List<String?> get props => [message];
}

class AchievementsLoadedState extends AchievementState {
  final List<AchievementModel> achievements;

  const AchievementsLoadedState(this.achievements);

  @override
  List<List<AchievementModel>?> get props => [achievements];
}
