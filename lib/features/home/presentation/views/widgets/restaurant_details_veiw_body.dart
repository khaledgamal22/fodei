import 'package:flutter/material.dart';
import 'package:mataam_app/core/utilits/widgets/custom_button.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/rest_details_custom_appBar.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/restaurant_info.dart';

import '../../../../../constant.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RestCustomAppBar(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,),
          child: RestaurantInfo(),
        ),
        Spacer(),
        Container(
          height: 110,
            child: Center(
              child: CustomButton(
                title: Text(
                  'Booking',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w400

                  ),
                ),
                color: kPrimaryColor,
                width: 270,
                height: 45,
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [ BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
              )]
            ),
          ),
      ],
    ); 
  }
}
