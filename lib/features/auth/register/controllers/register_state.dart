part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final String email;
  final String password;
  final String repeatPassword;
  const RegisterState({
    this.email = AppConsts.empty,
    this.password = AppConsts.empty,
    this.repeatPassword = AppConsts.empty,
  });

  RegisterState copyWith({
    String? email,
    String? password,
    String? repeatPassword,
  }) {
    return RegisterState(
      email: email ?? this.email,
      password: password ?? this.password,
      repeatPassword: repeatPassword ?? this.repeatPassword,
    );
  }

  @override
  List<Object> get props => [email, password, repeatPassword];
}
