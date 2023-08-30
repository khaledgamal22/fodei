import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';

class RestCustomAppBar extends StatelessWidget {
  const RestCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 60,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Color(0xffFFFFFF),
                    size: 22,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,),
                  child: Text(
                    'Details restaurant',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 20,
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        );
  }
}