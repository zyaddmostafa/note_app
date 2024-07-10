import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key, this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: kcolor, borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child: isloading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : const Text(
                  'ADD',
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
