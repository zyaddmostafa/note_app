import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/cubit/addnote_cubit.dart';
import 'package:noteapp/widgets/addnotebottomform.dart';
import 'package:noteapp/widgets/custombuttom.dart';
import 'package:noteapp/widgets/customtextfield.dart';

class Addnotebottomsheet extends StatelessWidget {
  const Addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddnoteCubit, AddnoteState>(
          listener: (context, state) {
            if (state is AddnoteFaluir) {
              print('failed ${state.message}');
            }
            if (state is AddnoteSuccses) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is Addnoteloading ? true : false,
                child: const Addnotebottomform());
          },
        ),
      ),
    );
  }
}
