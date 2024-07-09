import 'package:flutter/material.dart';
import 'package:noteapp/widgets/noteitem.dart';

class Notelistview extends StatelessWidget {
  const Notelistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Noteitem(),
        );
      },
    );
  }
}
