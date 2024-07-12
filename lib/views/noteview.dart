import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/cubit/notecubit_cubit.dart';
import 'package:noteapp/widgets/Addnotebottomsheet.dart';
import 'package:noteapp/widgets/noteviewbody.dart';

class Noteview extends StatelessWidget {
  const Noteview({super.key});
  static String id = 'noteview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return const Addnotebottomsheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const Noteviewbody(),
    );
  }
}
