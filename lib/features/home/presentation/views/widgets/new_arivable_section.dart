import 'package:flutter/material.dart';

import 'new_arivable_list.dart';

class NewArivableSection extends StatelessWidget {
  const NewArivableSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16,left: 24,),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today New Arivable',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Best of the today food list update',
                    style: TextStyle(
                      color: Color(0xff89909E),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                'See All >',
                style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.32,
          child: Padding(
            padding: const EdgeInsets.only(left: 8,),
            child: NewArivableList(),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
