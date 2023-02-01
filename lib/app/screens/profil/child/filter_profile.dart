import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class FilterProfile extends StatefulWidget {
  const FilterProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterProfile> createState() => _FilterProfileState();
}

class _FilterProfileState extends State<FilterProfile> {
  bool profil = true;
  bool setting = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 37),
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
        color: backgoundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(1, 9),
          )
        ],
      ),
      child: Row(
        children: [
          Flexible(
            child: InkWell(
              onTap: () {
                setState(() {
                  profil = true;
                  setting = false;
                });
              },
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: profil ? secondaryColor : whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: greyColor.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(1, 9),
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Profil Saya",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: InkWell(
              onTap: () {
                setState(() {
                  profil = false;
                  setting = true;
                });
              },
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: setting ? secondaryColor : whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: greyColor.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(1, 9),
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Pengaturan",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
