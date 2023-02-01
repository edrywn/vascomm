import 'package:flutter/material.dart';
import 'package:vascomm/app/screens/menu/child/produk/child/filter_produk.dart';
import 'package:vascomm/app/screens/menu/child/produk/child/listview_produk.dart';

class ProdukWidget extends StatelessWidget {
  const ProdukWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FilterProduk(),
        ListViewProduk(),
      ],
    );
  }
}
