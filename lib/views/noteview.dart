import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:noteapp/widgets/noteviewbody.dart';

class Noteview extends StatelessWidget {
  const Noteview({super.key});
  static String id = 'noteview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Noteviewbody(),
    );
  }
}
