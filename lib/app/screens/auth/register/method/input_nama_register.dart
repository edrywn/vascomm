import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

Row inputNamaRegister() {
  return Row(
    children: [
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nama Depan",
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
              child: TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5.0),
                  hintText: 'Masukkan Nama Depan',
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
        ),
      ),
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nama Belakang",
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
              child: TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5.0),
                  hintText: 'Masukkan Nama Belakang',
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
        ),
      ),
    ],
  );
}
