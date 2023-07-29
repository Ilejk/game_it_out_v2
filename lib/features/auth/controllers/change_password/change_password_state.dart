part of 'change_password_bloc.dart';

class ChangePasswordState extends Equatable {
  final String oldPassword;
  final String newPassword;

  const ChangePasswordState({
    this.oldPassword = AppConsts.empty,
    this.newPassword = AppConsts.empty,
  });
  ChangePasswordState copyWith({
    String? oldPassword,
    String? newPassword,
  }) {
    return ChangePasswordState(
      oldPassword: oldPassword ?? this.oldPassword,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  @override
  List<Object> get props => [oldPassword, newPassword];
}
