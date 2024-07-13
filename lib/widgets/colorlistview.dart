import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/cubit/addnote_cubit.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({super.key, required this.isactive, required this.color});
  final bool isactive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 28,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 30,
          );
  }
}

class Colorlistview extends StatefulWidget {
  const Colorlistview({super.key});

  @override
  State<Colorlistview> createState() => _ColorlistviewState();
}

class _ColorlistviewState extends State<Colorlistview> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kcolors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  currentindex = index;
                  BlocProvider.of<AddnoteCubit>(context).color = kcolors[index];
                  setState(() {});
                },
                child: Coloritem(
                  color: kcolors[index],
                  isactive: currentindex == index,
                ),
              ),
            );
          }),
    );
  }
}
