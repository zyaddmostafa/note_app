import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/cubit/notecubit_cubit.dart';
import 'package:noteapp/model/noteviewmodel.dart';
import 'package:noteapp/widgets/customtextfield.dart';
import 'package:noteapp/widgets/customappbar.dart';

class Editnoteviewbody extends StatefulWidget {
  const Editnoteviewbody({super.key, required this.note});
  final Notemodel note;

  @override
  State<Editnoteviewbody> createState() => _EditnoteviewbodyState();
}

class _EditnoteviewbodyState extends State<Editnoteviewbody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<Notecubit>(context).fetchallnotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 30,
          ),
          Customtextfield(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          Customtextfield(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subtitle,
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
