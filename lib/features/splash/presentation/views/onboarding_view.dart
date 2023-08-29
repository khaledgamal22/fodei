import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/core/utilits/app_routes.dart';
import 'package:mataam_app/core/utilits/widgets/custom_button.dart';
import 'package:mataam_app/features/splash/presentation/views/widgets/onboarding_page_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController controller = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.only(bottom: 80,),
      child: PageView(
        controller: controller,
        physics: isLast?NeverScrollableScrollPhysics():ClampingScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            if(value==2){
              isLast=true;
            }
          });
        },
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
    ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: isLast
            ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                    title: Text('Get Started',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20,fontWeight: FontWeight.w600,),),
                    color: kPrimaryColor,
                    width: 256,
                    height: 55,
                    onTap: (){
                      GoRouter.of(context).pushReplacement(AppRoute.kSplashId);
                    },
                  ),
              ],
            )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0xff4B5563),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                      activeDotColor: kPrimaryColor,
                      spacing: 16,
                    ),
                    onDotClicked: (index) {
                      controller.animateToPage(
                        index,
                        duration: Duration(
                          microseconds: 500,
                        ),
                        curve: Curves.elasticInOut,
                      );
                    },
                  ),
                  IconButton(
                      onPressed: () {
                        controller.nextPage(
                          duration: Duration(
                            microseconds: 500,
                          ),
                          curve: Curves.easeInOut,
                        );
                        
                      },
                      icon: Icon(
                        FontAwesomeIcons.arrowRight,
                        size: 20,
                        color: kPrimaryColor,
                      ))
                ],
              ),
      ),
    );
  }
}
