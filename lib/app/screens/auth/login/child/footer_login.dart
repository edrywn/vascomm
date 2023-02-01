import 'package:flutter/material.dart';
import 'package:vascomm/app/screens/auth/register/register_screen.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class FooterLogin extends StatelessWidget {
  const FooterLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Belum punya akun? ",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: textColor,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(RegisterScreen.routeName);
              },
              child: const Text(
                "Daftar Sekarang",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: primaryColor,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.copyright,
              size: 20,
              color: textColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "SILK. all right reserved.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: textColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
