import 'package:game_it_out_v2/common/exports/exports.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<SignInEmailEvent>(_emailEvent);
    on<SignInPasswordEvent>(_passwordEvent);
  }
  void _emailEvent(SignInEmailEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(SignInPasswordEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(password: event.password));
  }
}
