import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

GestureDetector buttonRegister(BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 48,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          "Register",
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
