import 'package:flutter/material.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/features/splash/presentation/views/widgets/custom_button.dart';
import 'package:mataam_app/features/splash/presentation/views/widgets/login_sheet.dart';
import 'package:mataam_app/features/splash/presentation/views/widgets/register_sheet.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/food-app-icon-12.jpg',
            height: MediaQuery.of(context).size.height*0.25,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'By enjoying Foodmedia Services',
          ),
          Text('Please Register first'),
          SizedBox(
            height: 70,
          ),
          CustomButton(
            title: 'Create Account',
            color: kPrimaryColor,
            colortext: Colors.white,
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(36),
                          topRight: Radius.circular(36))),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: RegisterSheet(),
                      ),
                    );
                  });
            },
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            title: 'Login',
            color: Color(0xffD1FAE5),
            colortext: Color(0xff10B981),
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(36),
                          topRight: Radius.circular(36))),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: LoginSheet(),
                      ),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
