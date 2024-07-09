import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kcolor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
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
