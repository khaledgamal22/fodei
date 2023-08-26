// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/features/booking/presentation/views/booking_view.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> views=[HomeViewBody(),BookingView()];

  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body:views[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value){
         setState(() {
           selectedIndex=value;
         });
        },
          backgroundColor: Color(0xffFFFFFF),
          elevation: 30,
          selectedIconTheme: IconThemeData(
            color: kPrimaryColor,
            size: 24,
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xff4B5563),
            size: 28,
          ),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '',
                ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.event_note,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.user,
              ),
              label: '',
            ),
          ],
          ),
    );
  }
}

