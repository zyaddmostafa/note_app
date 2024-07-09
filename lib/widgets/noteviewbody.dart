import 'package:flutter/material.dart';
import 'package:noteapp/widgets/noteitem.dart';
import 'package:noteapp/widgets/noteviewbar.dart';

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
          CustomAppBar(),
          SizedBox(
            height: 45,
          ),
          Noteitem(),
        ],
      ),
    );
  }
}
