import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/addnote_cubit.dart';
import 'package:noteapp/cubits/cubit/cubit/notecubit_cubit.dart';
import 'package:noteapp/widgets/addnotebottomform.dart';

class Addnotebottomsheet extends StatelessWidget {
  const Addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddnoteCubit(),
      child: BlocConsumer<AddnoteCubit, AddnoteState>(
        listener: (context, state) {
          if (state is AddnoteFaluir) {
            print('failed ${state.message}');
          }
          if (state is AddnoteSuccses) {
            BlocProvider.of<Notecubit>(context).fetchallnotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is Addnoteloading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: Addnotebottomform(),
              ),
            ),
          );
        },
      ),
    );
  }
}
