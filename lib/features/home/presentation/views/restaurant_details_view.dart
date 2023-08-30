import 'package:flutter/material.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/restaurant_details_veiw_body.dart';

class RestaurantDetailsView extends StatelessWidget {
  const RestaurantDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        backgroundColor: kScaffoldbackcolor,
        body: RestaurantDetailsViewBody(),
      ),
    );
  }
}