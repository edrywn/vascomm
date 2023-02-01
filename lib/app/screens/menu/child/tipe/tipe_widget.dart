import 'package:flutter/material.dart';
import 'package:vascomm/app/screens/menu/child/tipe/child/filter_tipe.dart';
import 'package:vascomm/app/screens/menu/child/tipe/child/listview_tipe.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class TipeWidget extends StatelessWidget {
  const TipeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Pilih Tipe Layanan Kesehatan Anda",
          style: TextStyle(
            color: primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        FilterTipe(),
        SizedBox(
          height: 10,
        ),
        ListViewTipe()
      ],
    );
  }
}
