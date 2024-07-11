import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/cubit/notecubit_cubit.dart';
import 'package:noteapp/widgets/notelistview.dart';
import 'package:noteapp/widgets/customappbar.dart';

class Noteviewbody extends StatefulWidget {
  const Noteviewbody({super.key});

  @override
  State<Noteviewbody> createState() => _NoteviewbodyState();
}

class _NoteviewbodyState extends State<Noteviewbody> {
  @override
  void initState() {
    BlocProvider.of<Notecubit>(context).fetchallnotes();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          CustomAppBar(
            title: ' Note',
            icon: Icons.search,
          ),
          Expanded(
            child: Notelistview(),
          ),
        ],
      ),
    );
  }
}
