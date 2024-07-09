import 'package:flutter/material.dart';
import 'package:noteapp/widgets/notelistview.dart';
import 'package:noteapp/widgets/customappbar.dart';

class Noteviewbody extends StatelessWidget {
  const Noteviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          CustomAppBar(
            title: ' Note',
            icon: Icons.search,
          ),
          Expanded(
            child: Notelistview(),
          ),
        ],
      ),
    );
  }
}
