import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custombuttom.dart';
import 'package:noteapp/widgets/customtextfield.dart';

class Addnotebottomsheet extends StatelessWidget {
  const Addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Addnotebottomform(),
      ),
    );
  }
}

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
  String? title, substitle;
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
              substitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Custombuttom(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
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
