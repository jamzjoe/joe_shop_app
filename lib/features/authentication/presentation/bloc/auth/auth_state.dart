part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object?> get props => [];
}

class UserLogoutSuccess extends AuthState {
  @override
  List<Object?> get props => [];
}

class UserLoginSuccess extends AuthState {
  @override
  List<Object?> get props => [];
}
