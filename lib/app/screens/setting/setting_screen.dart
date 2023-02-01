import 'package:flutter/material.dart';
import 'package:vascomm/app/screens/home/drawer/drawer.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  static const routeName = 'setting_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerHome(),
      appBar: AppBar(
        backgroundColor: backgoundColor,
        foregroundColor: titleColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.maxFinite,
          height: 107,
          color: primaryColor,
          child: Stack(
            children: [
              const Positioned(
                left: 0,
                child: Image(
                  image: AssetImage("assets/images/pengaturan.png"),
                ),
              ),
              const Positioned(
                right: 85,
                top: 18,
                child: Image(
                  image: AssetImage("assets/images/ornamen.png"),
                ),
              ),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(20),
                height: 107,
                child: Row(
                  children: const [
                    Flexible(
                      flex: 2,
                      child: Text(
                        "Ingin mendapat update dari kami ?",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: whiteColor,
                        ),
                        maxLines: 2,
                        softWrap: true,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "Dapatkan Notifikasi",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: whiteColor,
                        ),
                        maxLines: 2,
                        softWrap: true,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt_sharp,
                      color: whiteColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
