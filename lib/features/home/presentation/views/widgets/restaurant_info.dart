import 'package:flutter/material.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/location_widget.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.5,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: kBackgroundContainer,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ambrosia & Hotel Restaurant',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 6,),
            LocationWidget(text: 'Kazi Deiry, Taiger Chettagong'),
            SizedBox(height: 24,),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.3,
              child: CustomImage(
                borderRadius: BorderRadius.circular(16),
                aspect: 3/2,
              ),
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Icon(Icons.watch_later,color: kPrimaryColor,size: 18,),
                SizedBox(width: 8,),
                Text('Open today',style: TextStyle(color: Color(0xff6B7280),),),
              ],
            ),
            SizedBox(height: 8,),
            Text('10:00 AM - 12:00 PM',style: TextStyle(fontWeight: FontWeight.w500,),),
          ],
        ),
      ),
    );
  }
}