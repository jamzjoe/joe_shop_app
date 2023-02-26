part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class LoginEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class LogoutEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}
