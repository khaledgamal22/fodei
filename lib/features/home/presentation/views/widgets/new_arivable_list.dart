import 'package:flutter/material.dart';

import 'new_arivable_item.dart';

class NewArivableList extends StatelessWidget {
  const NewArivableList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(right: 16),
          child: NewArivableItem(),
        );
      },);
  }
}