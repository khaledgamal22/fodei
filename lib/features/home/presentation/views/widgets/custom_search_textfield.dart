import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.backgroundcolor});

  final Color backgroundcolor;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxHeight: 45,
          maxWidth: MediaQuery.of(context).size.width*0.73,
        ),
        filled: true,
        fillColor: backgroundcolor,
        hintText: 'Search',
        hintStyle: TextStyle(color: Color(0xff9CA3AF),fontSize: 18,),
        prefixIcon: Icon(Icons.search,color: Color(0xff9CA3AF),),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: backgroundcolor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: backgroundcolor,
          ),
        ),
      ),
    );
  }
}
