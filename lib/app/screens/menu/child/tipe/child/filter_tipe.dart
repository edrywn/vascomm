import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class FilterTipe extends StatefulWidget {
  const FilterTipe({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterTipe> createState() => _FilterTipeState();
}

class _FilterTipeState extends State<FilterTipe> {
  bool satuan = true;
  bool paket = false;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  satuan = true;
                  paket = false;
                });
              },
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: satuan ? secondaryColor : whiteColor,
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
                    "Satuan",
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
                  satuan = false;
                  paket = true;
                });
              },
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: paket ? secondaryColor : whiteColor,
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
                    "Paket Pemeriksaan",
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
