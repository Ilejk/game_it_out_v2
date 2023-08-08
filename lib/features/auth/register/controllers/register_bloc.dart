import 'package:game_it_out_v2/common/exports/exports.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<RegisterEmailEvent>(_emailEvent);
    on<RegisterPasswordEvent>(_passwordEvent);
    on<RegisterRepeatPassword>(_repeatPasswordEvent);
  }
  void _emailEvent(RegisterEmailEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(
      RegisterPasswordEvent event, Emitter<RegisterState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _repeatPasswordEvent(
      RegisterRepeatPassword event, Emitter<RegisterState> emit) {
    emit(state.copyWith(repeatPassword: event.repeatPassword));
  }
}
