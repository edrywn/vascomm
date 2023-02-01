import 'package:flutter/material.dart';
import 'package:vascomm/app/screens/auth/login/child/title_login.dart';
import 'package:vascomm/app/screens/auth/register/child/footer_register.dart';
import 'package:vascomm/app/screens/auth/register/method/button_register.dart';
import 'package:vascomm/app/screens/auth/register/method/input_password_register.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

import 'method/input_email_register.dart';
import 'method/input_general_regitser.dart';
import 'method/input_nama_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const routeName = 'register_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Padding(
            padding: defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 110,
                ),
                const TitleLogin(),
                const Text(
                  "Silahkan login untuk melanjutkan",
                  style: TextStyle(fontSize: 12, color: textColor),
                ),
                const SizedBox(
                  height: 45,
                ),
                SizedBox(
                  height: 155,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Image.asset(
                          'assets/images/rectangle_1885.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: -45,
                        child: Image.asset(
                          'assets/images/group_11459.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                inputNamaRegister(),
                const SizedBox(
                  height: 16,
                ),
                inputGeneralRegister(
                    context, "No. KTP", "Masukan No. KTP Anda"),
                inputEmailRegister(context),
                inputGeneralRegister(
                    context, "No. Telepon", "Masukan No. Telepon Anda"),
                inputPasswordRegister(
                    context, "Password", "Masukan Password Anda"),
                inputPasswordRegister(
                    context, "Konfirmasi Password", "Masukan Password Anda"),
                const SizedBox(
                  height: 16,
                ),
                buttonRegister(context),
                const SizedBox(
                  height: 30,
                ),
                const FooterRegister(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
