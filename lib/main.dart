import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vascomm/app/bloc/login/login_bloc.dart';
import 'package:vascomm/app/screens/auth/login/login_screen.dart';
import 'package:vascomm/app/screens/auth/register/register_screen.dart';
import 'package:vascomm/app/screens/menu/menu_screen.dart';
import 'package:vascomm/app/screens/profil/profil_screen.dart';
import 'package:vascomm/app/screens/setting/setting_screen.dart';

import 'app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Vascomm',
            theme: ThemeData(
              fontFamily: 'Gilroy',
            ),
            home: state is LoginSuccess ? HomeScreen() : LoginScreen(),
            routes: {
              HomeScreen.routeName: (context) => const HomeScreen(),
              LoginScreen.routeName: (context) => const LoginScreen(),
              RegisterScreen.routeName: (context) => const RegisterScreen(),
              MenuScreen.routeName: (context) => const MenuScreen(),
              ProfilScreen.routeName: (context) => const ProfilScreen(),
              SettingScreen.routeName: (context) => const SettingScreen(),
            },
          );
        },
      ),
    );
  }
}
