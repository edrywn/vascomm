import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

Column inputGeneralProfie(
    BuildContext context, String label, String hint, String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
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
          initialValue: value,
          maxLines: 1,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(5.0),
            hintText: hint,
            hintStyle: const TextStyle(
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
