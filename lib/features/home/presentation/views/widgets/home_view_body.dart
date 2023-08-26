import 'package:flutter/material.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/custom_search_textfield.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/new_arivable_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
              ),
              child: CustomAppBar(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 32,
              ),
              child: CustomSearchTextField(
                backgroundcolor: Color(0xffE6E7E9),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                'Today New Arivable',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Best of the today food list update',
                style: TextStyle(
                  color: Color(0xff89909E),
                ),
              ),
                    ],
                  ),
                  Spacer(),
                  Text('See All >',style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 16,
                  ),)
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
              child: NewArivableList(),
            ),
            SizedBox(height: 20,),
            BookingRestaurantSection(),
          ],
        ),
      ),
    );
  }
}
class BookingRestaurantSection extends StatelessWidget {
  const BookingRestaurantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                'Explore Restaurant',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Check your city Near by Restaurant',
                style: TextStyle(
                  color: Color(0xff89909E),
                ),
              ),
                    ],
                  ),
                  Spacer(),
                  Text('See All >',style: TextStyle(
                    color: Color(0xff6B7280),
                    fontSize: 16,
                  ),)
                ],
              ),
            )
      ],
    );
  }
}
