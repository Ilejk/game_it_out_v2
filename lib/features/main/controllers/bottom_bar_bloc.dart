import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_bar_event.dart';
part 'bottom_bar_state.dart';

class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc() : super(const BottomBarState()) {
    on<BottomBarEvent>(_changeBottomBarEvent);
  }
  void _changeBottomBarEvent(
      BottomBarEvent event, Emitter<BottomBarState> emit) {
    emit(state.copyWith(selectedIndex: event.selectedIndex));
  }
}
