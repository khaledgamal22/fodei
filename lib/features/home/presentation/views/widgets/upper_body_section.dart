import 'package:flutter/material.dart';

import 'custom_appBar.dart';
import 'custom_search_textfield.dart';

class UpperBodySection extends StatelessWidget {
  const UpperBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
                left: 24,
              ),
              child: CustomAppBar(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
              ),
              child: CustomSearchTextField(
                backgroundcolor: Color(0xffE6E7E9),
              ),
            ),
            SizedBox(
              height: 25,
            ),
      ],
    );
  }
}