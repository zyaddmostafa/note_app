import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custombuttom.dart';
import 'package:noteapp/widgets/customtextfield.dart';

class Addnotebottomsheet extends StatelessWidget {
  const Addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Customtextfield(
              hint: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            Customtextfield(
              hint: 'Contetnt',
              maxline: 6,
            ),
            SizedBox(
              height: 20,
            ),
            Custombuttom(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
