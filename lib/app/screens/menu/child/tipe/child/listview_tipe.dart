import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class ListViewTipe extends StatelessWidget {
  const ListViewTipe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          height: 149,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: backgoundColor,
            borderRadius: BorderRadius.circular(16),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                        maxLines: 2,
                      ),
                      const Text(
                        "Rp. 1.400.000",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFFF7200),
                        ),
                        maxLines: 2,
                      ),
                      Column(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.home_work_outlined,
                                color: primaryColor,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Lenmarc Surabaya",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF6A6A6A),
                                ),
                                maxLines: 2,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: primaryColor,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Dukuh Pakis, Surabaya",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor,
                                ),
                                maxLines: 2,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: double.maxFinite,
                width: 119,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/image6.png")),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
