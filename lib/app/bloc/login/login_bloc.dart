import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vascomm/data/repository/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    final loginRepository = LoginRepository();
    on<SetLogin>((event, emit) async {
      print(event.email);
      try {
        emit(LoginLoading());
        final result =
            await loginRepository.login(event.email!, event.password!);
        if (result.success!) {
          emit(LoginSuccess(token: result.token));
        } else {
          emit(LoginError(error: result.token));
        }
      } catch (e) {
        emit(LoginError(error: e.toString()));
      }
    });
  }
}
