part of 'change_email_bloc.dart';

class ChangeEmailState extends Equatable {
  final String newEmail;
  final String password;
  const ChangeEmailState({
    this.newEmail = AppConsts.empty,
    this.password = AppConsts.empty,
  });

  ChangeEmailState copyWith({
    String? newEmail,
    String? password,
  }) {
    return ChangeEmailState(
        newEmail: newEmail ?? this.newEmail,
        password: password ?? this.password);
  }

  @override
  List<String?> get props => [newEmail, password];
}
