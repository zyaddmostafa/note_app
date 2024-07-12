import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/cubit/notecubit_cubit.dart';
import 'package:noteapp/model/noteviewmodel.dart';
import 'package:noteapp/widgets/noteitem.dart';

class Notelistview extends StatelessWidget {
  const Notelistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Notecubit, NotecubitState>(
      builder: (context, state) {
        List<Notemodel> notes = BlocProvider.of<Notecubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Noteitem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
