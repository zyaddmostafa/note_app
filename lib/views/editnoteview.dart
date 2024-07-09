import 'package:flutter/material.dart';
import 'package:noteapp/widgets/editnoteviewbody.dart';

class Editnoteview extends StatelessWidget {
  const Editnoteview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Editnoteviewbody(),
    );
  }
}
