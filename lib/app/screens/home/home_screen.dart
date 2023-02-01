import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vascomm/app/screens/home/child/first_banner_home.dart';
import 'package:vascomm/app/screens/home/child/second_banner_home.dart';
import 'package:vascomm/app/screens/home/child/third_banner_home.dart';
import 'package:vascomm/app/screens/home/drawer/drawer.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerHome(),
      appBar: AppBar(
        backgroundColor: backgoundColor,
        foregroundColor: titleColor,
        elevation: 0,

        // leading: IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.menu,
        //     )),
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Padding(
            padding: defaultPadding,
            child: Column(
              children: const [
                SizedBox(
                  height: 40,
                ),
                FirtsBanner(),
                SizedBox(
                  height: 40,
                ),
                SecondBanner(),
                SizedBox(
                  height: 40,
                ),
                ThirdBanner()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
