import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mataam_app/core/utilits/widgets/custom_button.dart';

import '../../../../../constant.dart';
import 'custom_image.dart';
import 'location_widget.dart';

class RestaurantItem extends StatelessWidget {
  const RestaurantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 8,
            ),
            SizedBox(
              height: 80,
              child: CustomImage(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ambrosia Hotel & Restaurant',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1F2937)),
                  ),
                  LocationWidget(text: 'Kazi Deriy, Taiger Pass Chittagong'),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomButton(
                          title: Text(
                            'Book',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w600),
                          ),
                          color: kPrimaryColor,
                          width: 100,
                          height: 40,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


