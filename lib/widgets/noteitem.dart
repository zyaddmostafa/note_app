import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/cubit/notecubit_cubit.dart';
import 'package:noteapp/model/noteviewmodel.dart';

import 'package:noteapp/views/editnoteview.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key, required this.note});
  final Notemodel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Editnoteview(
                note: note,
              );
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 24,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(right: 10),
              title: Text(
                note.title,
              ),
              titleTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.subtitle,
                ),
              ),
              subtitleTextStyle: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17,
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<Notecubit>(context).fetchallnotes();
                },
                icon: const Icon(
                  Icons.delete,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                note.data,
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
