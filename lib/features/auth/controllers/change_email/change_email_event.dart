part of 'change_email_bloc.dart';

abstract class ChangeEmailEvent extends Equatable {
  const ChangeEmailEvent();
}

class ChangeEmailNewEmailEvent extends ChangeEmailEvent {
  final String newEmail;

  const ChangeEmailNewEmailEvent(this.newEmail);

  @override
  List<String?> get props => [newEmail];
}

class ChangeEmailPasswordEvent extends ChangeEmailEvent {
  final String password;

  const ChangeEmailPasswordEvent(this.password);

  @override
  List<String?> get props => [password];
}
