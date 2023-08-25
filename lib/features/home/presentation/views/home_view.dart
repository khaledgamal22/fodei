import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/custom_bottomNavi_bar.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: HomeViewBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Color(0xffFFFFFF),
      //     elevation: 5,
      //     selectedItemColor: kPrimaryColor,
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.home,
      //             size: 32,
      //             color: Color(0xff6B7280),
      //           ),
      //           activeIcon: HomeView()),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.event_note,
      //           size: 32,
      //           color: Color(0xff6B7280),
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           FontAwesomeIcons.user,
      //           size: 32,
      //           color: Color(0xff6B7280),
      //         ),
      //       ),
      //     ],
      //     ),
    );
  }
}
