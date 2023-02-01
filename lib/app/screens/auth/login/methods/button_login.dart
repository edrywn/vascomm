import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vascomm/app/bloc/login/login_bloc.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

GestureDetector buttonLogin(BuildContext context, TextEditingController email,
    TextEditingController password) {
  final loginBloc = BlocProvider.of<LoginBloc>(context);
  login(String email, String passowrd) {
    loginBloc.add(SetLogin(email: email, password: passowrd));
  }

  return GestureDetector(
    onTap: () {
      login(email.text, password.text);
    },
    child: Container(
      height: 48,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          "Login",
          style: TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
      ),
    ),
  );
}
