import 'package:flutter/material.dart';
import 'package:mataam_app/constant.dart';
import 'booking_list.dart';

class BookingViewBody extends StatelessWidget {
  const BookingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
       const SliverAppBar(
          toolbarHeight: 80,
          title: Text('Booking History'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          collapsedHeight: 80,
          pinned: true,
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              BookingViewList(),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: 26,
                      color: Color(0xff6B7280),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Booking more',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff6B7280),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
   
  }
}
