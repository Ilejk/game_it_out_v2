import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:game_it_out_v2/common/models/achievement_model.dart';
import 'package:game_it_out_v2/features/achievements/repository/achievement_repository.dart';

part 'achievement_event.dart';
part 'achievement_state.dart';

class AchievementBloc extends Bloc<AchievementEvent, AchievementState> {
  final AchievementRepository repository;

  AchievementBloc(this.repository) : super(const LoadingState()) {
    on<FetchAchievementsEvent>(_fetchAchievementsEvent);
  }

  void _fetchAchievementsEvent(
      FetchAchievementsEvent event, Emitter<AchievementState> emit) async {
    emit(const LoadingState());
    try {
      final achievements = await repository.fetchAchievements();
      emit(AchievementsLoadedState(achievements));
    } catch (e) {
      emit(const ErrorState("Failed to load achievements"));
    }
  }
}
