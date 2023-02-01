part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  String? token;
  LoginSuccess({this.token});
  @override
  // TODO: implement props
  List<Object> get props => [
        {this.token}
      ];
}

class LoginError extends LoginState {
  String? error;
  LoginError({this.error});
  @override
  // TODO: implement props
  List<Object> get props => [
        {error}
      ];
}
