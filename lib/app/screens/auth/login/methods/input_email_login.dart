import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

Column inputEmailLogin(BuildContext context, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Email",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: titleColor,
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(1, 190, 190, 190),

              offset: Offset(0, 8), // changes position of shadow
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          controller: controller,
          maxLines: 1,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(5.0),
            hintText: 'Masukkan Email anda',
            hintStyle: TextStyle(
              color: textColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none,
          ),
          style: const TextStyle(
            color: textColor,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );
}
