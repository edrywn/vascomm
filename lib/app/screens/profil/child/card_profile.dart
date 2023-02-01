import 'package:flutter/material.dart';
import 'package:vascomm/app/utilities/theme/theme.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 162,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryColor,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 37, left: 20),
            height: 162,
            width: double.maxFinite,
            child: Column(
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
                            fontSize: 18.0,
                            color: whiteColor,
                          ),
                        ),
                        Text(
                          "Membership",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: textColor,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            child: Image(
              image: AssetImage('assets/images/subtract.png'),
            ),
          ),
          const Positioned(
            right: 0,
            bottom: 0,
            child: Image(
              image: AssetImage('assets/images/left.png'),
            ),
          ),
          const Positioned(
            right: 40,
            bottom: 40,
            child: Image(
              image: AssetImage('assets/images/ornamen.png'),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 48,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0XFFBEBEBE).withOpacity(0.16),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Lengkapi profile anda untuk memaksimalkan ",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: whiteColor,
                    ),
                  ),
                  Text(
                    "penggunaan aplikasi",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
