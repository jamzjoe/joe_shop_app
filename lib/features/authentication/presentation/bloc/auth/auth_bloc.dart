import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

final FirebaseAuth auth = FirebaseAuth.instance;
late final StreamSubscription authStateStream;

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    authStateStream = auth.authStateChanges().listen((user) {
      if (user == null) {
        add(LoginEvent());
      } else {
        add(LogoutEvent());
      }
    });

    on<LoginEvent>((event, emit) async {
      emit(UserLoginSuccess());
    });

    on<LogoutEvent>((event, emit) async {
      emit(UserLogoutSuccess());
    });

    on<AuthEvent>((event, emit) {});
  }
}
