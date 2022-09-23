import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print("Hotel price is ${hotel['price']}");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Styles.primaryColor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/${hotel['image']}"),
            ),
          ),
        ),
        const Gap(15),
        Text(
          "Open Space",
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
        const Gap(5),
        Text(
          "Roma",
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        const Gap(8),
        Text(
          "\$60/night",
          style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}
