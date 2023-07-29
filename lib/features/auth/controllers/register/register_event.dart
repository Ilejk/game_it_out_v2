part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();
}

class RegisterEmailEvent extends RegisterEvent {
  final String email;
  const RegisterEmailEvent(this.email);

  @override
  List<String?> get props => [email];
}

class RegisterPasswordEvent extends RegisterEvent {
  final String password;
  const RegisterPasswordEvent(this.password);

  @override
  List<String?> get props => [password];
}

class RegisterRepeatPassword extends RegisterEvent {
  final String repeatPassword;
  const RegisterRepeatPassword(this.repeatPassword);

  @override
  List<String?> get props => [repeatPassword];
}
