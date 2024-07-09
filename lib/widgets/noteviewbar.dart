import 'package:flutter/material.dart';
import 'package:noteapp/widgets/customsearchicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
