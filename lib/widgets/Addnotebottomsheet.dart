import 'package:flutter/material.dart';
import 'package:noteapp/widgets/customtextfield.dart';

class Addnotebottomsheet extends StatelessWidget {
  const Addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Customtextfield(),
        ],
      ),
    );
  }
}
