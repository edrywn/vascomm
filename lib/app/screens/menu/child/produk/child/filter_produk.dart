import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';
import 'package:vascomm/data/models/produk/filter_model.dart';

class FilterProduk extends StatefulWidget {
  const FilterProduk({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterProduk> createState() => _FilterProdukState();
}

class _FilterProdukState extends State<FilterProduk> {
  List<FilterModel> filterModel = [
    FilterModel(name: "All Produk", selected: true),
    FilterModel(name: "Layanan Kesehatan", selected: false),
    FilterModel(name: "Alat Kesehatan", selected: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        itemCount: filterModel.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                setState(() {
                  filterModel[index].selected = !filterModel[index].selected!;
                });
              },
              child: Chip(
                shadowColor: greyColor.withOpacity(0.4),
                elevation: 5,
                label: Text(
                  filterModel[index].name!,
                  style: TextStyle(
                    color: filterModel[index].selected == true
                        ? whiteColor
                        : primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0,
                  ),
                ),
                backgroundColor: filterModel[index].selected == true
                    ? primaryColor
                    : whiteColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
              ),
            ),
          );
        },
      ),
    );
  }
}
