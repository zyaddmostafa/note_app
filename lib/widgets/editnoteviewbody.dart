import 'package:flutter/material.dart';
import 'package:noteapp/widgets/customtextfield.dart';
import 'package:noteapp/widgets/customappbar.dart';

class Editnoteviewbody extends StatelessWidget {
  const Editnoteviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 30,
          ),
          Customtextfield(hint: 'Title'),
          SizedBox(
            height: 30,
          ),
          Customtextfield(
            hint: 'Content',
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
