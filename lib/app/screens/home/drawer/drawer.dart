import 'package:flutter/material.dart';
import 'package:vascomm/app/screens/auth/login/login_screen.dart';
import 'package:vascomm/app/screens/profil/profil_screen.dart';
import 'package:vascomm/app/screens/setting/setting_screen.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Container(
            width: 55,
            padding: const EdgeInsets.only(top: 20),
            height: double.maxFinite,
            color: primaryColor.withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: whiteColor,
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: whiteColor.withOpacity(0.5),
              child: Drawer(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                    "https://profilemagazine.com/wp-content/uploads/2020/04/Ajmere-Dale-Square-thumbnail.jpg"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Angga Praja",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Text(
                                    "Membership",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11.0,
                                      color: textColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.of(context)
                                  .popAndPushNamed(ProfilScreen.routeName);
                            },
                            title: const Text(
                              "Profil Saya",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0,
                                color: textColor,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.keyboard_arrow_right_rounded,
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.of(context)
                                  .popAndPushNamed(SettingScreen.routeName);
                            },
                            title: const Text(
                              "Pengaturan",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0,
                                color: textColor,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.keyboard_arrow_right_rounded,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  LoginScreen.routeName, (route) => false);
                            },
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: const Center(
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Ikuti kami di",
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: primaryColor),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.facebook),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
