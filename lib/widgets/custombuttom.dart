import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: kcolor, borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: const Center(
          child: Text(
            'Save',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
