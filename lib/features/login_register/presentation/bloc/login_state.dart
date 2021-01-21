part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class ShowProgressBar extends LoginState {}

class ShowPassword extends LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFaliure extends LoginState {
  final String error;

  const LoginFaliure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => ' LoginFaliure { error: $error }';
}
