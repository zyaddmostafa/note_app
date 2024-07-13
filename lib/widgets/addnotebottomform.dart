import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/cubits/cubit/addnote_cubit.dart';
import 'package:noteapp/model/noteviewmodel.dart';
import 'package:noteapp/widgets/custombuttom.dart';
import 'package:noteapp/widgets/customtextfield.dart';

class Addnotebottomform extends StatefulWidget {
  const Addnotebottomform({
    super.key,
  });

  @override
  State<Addnotebottomform> createState() => _AddnotebottomformState();
}

class _AddnotebottomformState extends State<Addnotebottomform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Customtextfield(
            hint: 'Title',
            onsave: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Customtextfield(
            hint: 'Contetnt',
            maxline: 6,
            onsave: (value) {
              subtitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddnoteCubit, AddnoteState>(
            builder: (context, state) {
              return Custombuttom(
                isloading: state is Addnoteloading ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var notemodel = Notemodel(
                        title: title!,
                        subtitle: subtitle!,
                        data: DateFormat.yMd().format(DateTime.now()),
                        color: Colors.blue.value);
                    BlocProvider.of<AddnoteCubit>(context).addnote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
