import 'package:game_it_out_v2/common/exports/exports.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(const ChangePasswordState()) {
    on<ChangePasswordOldPasswordEvent>(_oldPasswordEvent);
    on<ChangePasswordNewPasswordEvent>(_newPasswordEvent);
  }

  void _oldPasswordEvent(
      ChangePasswordOldPasswordEvent event, Emitter<ChangePasswordState> emit) {
    emit(state.copyWith(oldPassword: event.oldPassword));
  }

  void _newPasswordEvent(
      ChangePasswordNewPasswordEvent event, Emitter<ChangePasswordState> emit) {
    emit(state.copyWith(newPassword: event.newPassword));
  }
}
