import 'package:flutter/material.dart';
import 'package:noteapp/model/noteviewmodel.dart';
import 'package:noteapp/widgets/editnoteviewbody.dart';

class Editnoteview extends StatelessWidget {
  const Editnoteview({super.key, required this.note});
  final Notemodel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Editnoteviewbody(
        note: note,
      ),
    );
  }
}
