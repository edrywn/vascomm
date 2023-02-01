import 'package:flutter/material.dart';
import 'package:vascomm/app/screens/menu/child/produk/produk_widget.dart';
import 'package:vascomm/app/screens/menu/child/tipe/tipe_widget.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  static const routeName = 'menu_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgoundColor,
        foregroundColor: titleColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.format_list_bulleted_rounded,
            )),
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.search,
                  ),
                  color: titleColor,
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
                hintText: 'Search',
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
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ProdukWidget(),
              SizedBox(
                height: 20,
              ),
              TipeWidget()
            ],
          ),
        ),
      ),
    );
  }
}
