import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vascomm/app/bloc/login/login_bloc.dart';
import 'package:vascomm/app/screens/auth/login/child/footer_login.dart';
import 'package:vascomm/app/screens/auth/login/child/title_login.dart';
import 'package:vascomm/app/screens/auth/login/methods/button_login.dart';
import 'package:vascomm/app/screens/auth/login/methods/input_email_login.dart';
import 'package:vascomm/app/screens/home/home_screen.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool? secure;

  @override
  void initState() {
    super.initState();

    secure = true;
  }

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<LoginBloc, LoginState>(
          bloc: loginBloc,
          listener: (context, state) {
            if (state is LoginError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error!),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is LoginLoading) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: backgoundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Loading"),
                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Padding(
                  padding: defaultPadding,
                  child: Form(
                    key: formKey,
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
                          height: 16,
                        ),
                        inputEmailLogin(context, emailController),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Password",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: titleColor,
                                  ),
                                ),
                                Text(
                                  "Lupa Password",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: textColor,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(1, 190, 190, 190),

                                    offset: Offset(
                                        0, 8), // changes position of shadow
                                  ),
                                ],
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                obscureText: secure!,
                                controller: passwordController,
                                maxLines: 1,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(5.0),
                                    hintText: 'Masukkan password anda',
                                    hintStyle: const TextStyle(
                                      color: textColor,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    border: InputBorder.none,
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            secure = !secure!;
                                          });
                                        },
                                        icon: Icon(
                                          secure!
                                              ? Icons.lock_outline
                                              : Icons.lock_open,
                                          color: primaryColor,
                                        ))),
                                style: const TextStyle(
                                  color: textColor,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        buttonLogin(
                            context, emailController, passwordController),
                        const SizedBox(
                          height: 30,
                        ),
                        const FooterLogin()
                      ],
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
