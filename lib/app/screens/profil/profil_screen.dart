import 'package:flutter/material.dart';
import 'package:vascomm/app/screens/home/drawer/drawer.dart';
import 'package:vascomm/app/screens/profil/child/card_profile.dart';
import 'package:vascomm/app/screens/profil/child/filter_profile.dart';
import 'package:vascomm/app/screens/profil/method/input_generat_profile.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});
  static const routeName = 'profil_screen';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FilterProfile(),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
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
                child: Column(
                  children: [
                    CardProfile(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Pilih data yang ingin ditampilkan",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: secondaryColor,
                        child: Icon(
                          Icons.location_history_rounded,
                          color: titleColor,
                        ),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: greyColor,
                        child: Icon(
                          Icons.location_on,
                          color: titleColor,
                        ),
                      ),
                      title: Text(
                        "Data Diri",
                        style: TextStyle(
                          color: titleColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Data Diri",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          inputGeneralProfie(
                            context,
                            "Nama Depan",
                            "Masukan Nama Anda",
                            "Jhon",
                          ),
                          inputGeneralProfie(
                            context,
                            "Nama Belakang",
                            "Masukan Nama Anda",
                            "",
                          ),
                          inputGeneralProfie(
                            context,
                            "Email",
                            "Masukan Email Anda",
                            "",
                          ),
                          inputGeneralProfie(
                            context,
                            "No. Telepon",
                            "Masukan No. Telepon Anda",
                            "",
                          ),
                          inputGeneralProfie(
                            context,
                            "No. KTP",
                            "Masukan No. KTP Anda",
                            "",
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.info,
                                color: primaryColor,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  "Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya",
                                  maxLines: 2,
                                  softWrap: true,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 48,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "Simpan Profil",
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
