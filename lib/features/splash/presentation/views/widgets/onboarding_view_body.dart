import 'package:flutter/material.dart';

import 'onboarding_page_item.dart';

class OnBoardingViewBody extends StatelessWidget {
 const OnBoardingViewBody({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80,),
      child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          OnboardPageItem(
            image: 'assets/images/Tracking & Maps.png',
            title: 'Nearby restaurants',
            subTitle: "You don't have to go far to find a good restaurant,we have provided all restaurants that is nearby",
          ),
          OnboardPageItem(
            image: 'assets/images/Order illustration.png',
            title: 'Select the Favorites Menu',
            subTitle: "Now eat well, don't leave the house,You can choose your favorite food only with one click",
          ),
          OnboardPageItem(
            image: 'assets/images/Safe Food.png',
            title: 'Good food at a cheap price',
            subTitle: 'You can eat at expensive restaurants with affordable price',
          ),
        ],
      ),
    );
  }
}

