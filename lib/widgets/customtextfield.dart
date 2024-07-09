import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kcolor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(color: kcolor),
        border: buildborder(),
        focusedBorder: buildborder(kcolor),
        enabledBorder: buildborder(),
      ),
    );
  }
}

OutlineInputBorder buildborder([Color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Color ?? Colors.white,
    ),
  );
}
