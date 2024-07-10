import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield(
      {super.key, required this.hint, this.maxline = 1, this.onsave});
  final String hint;
  final int maxline;
  final void Function(String?)? onsave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsave,
      cursorColor: kcolor,
      maxLines: maxline,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is requird';
        } else {
          return null;
        }
      },
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
