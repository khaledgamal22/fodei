import 'package:flutter/material.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/custom_appBar.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/new_arivable_item.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
              child: NewArivableItem(),
            )
          ],
        ),
      ),
    );
  }
}


