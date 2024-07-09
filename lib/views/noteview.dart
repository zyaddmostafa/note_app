import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Addnotebottomsheet.dart';
import 'package:noteapp/widgets/noteviewbody.dart';

class Noteview extends StatelessWidget {
  const Noteview({super.key});
  static String id = 'noteview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Addnotebottomsheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const Noteviewbody(),
    );
  }
}
