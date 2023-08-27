import 'package:flutter/material.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/location_widget.dart';
import 'custom_image.dart';

class NewArivableItem extends StatelessWidget {
  const NewArivableItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(16),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32 * 0.6,
                child: CustomImage(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Chicken Biryani',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1F2937),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              LocationWidget(text: 'Ambrosia Hotel & Restaurant',crossAxisAlignment: CrossAxisAlignment.start,),
            ],
          ),
        ),
      ),
    );
  }
}
