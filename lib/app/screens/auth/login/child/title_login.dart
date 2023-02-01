import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class TitleLogin extends StatelessWidget {
  const TitleLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "Hai, ",
          style: TextStyle(
            color: titleColor,
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Selamat Datang, ",
          style: TextStyle(
            fontFamily: 'Gilroy',
            color: titleColor,
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    );
  }
}
