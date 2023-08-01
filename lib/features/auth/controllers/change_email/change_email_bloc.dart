import 'package:game_it_out_v2/common/exports/exports.dart';

part 'change_email_event.dart';
part 'change_email_state.dart';

class ChangeEmailBloc extends Bloc<ChangeEmailEvent, ChangeEmailState> {
  ChangeEmailBloc() : super(const ChangeEmailState()) {
    on<ChangeEmailNewEmailEvent>(_changeEmailNewEmailEvent);
    on<ChangeEmailPasswordEvent>(_changeEmailPasswordEvent);
  }
  void _changeEmailNewEmailEvent(
      ChangeEmailNewEmailEvent event, Emitter<ChangeEmailState> emit) {
    emit(state.copyWith(newEmail: event.newEmail));
  }

  void _changeEmailPasswordEvent(
      ChangeEmailPasswordEvent event, Emitter<ChangeEmailState> emit) {
    emit(state.copyWith(password: event.password));
  }
}
