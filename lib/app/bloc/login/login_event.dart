part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class SetLogin extends LoginEvent {
  String? email, password;
  SetLogin({this.email, this.password});
  @override
  // TODO: implement props
  List<Object> get props => [
        {email, password}
      ];
}
