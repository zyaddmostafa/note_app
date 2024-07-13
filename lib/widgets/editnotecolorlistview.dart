import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/model/noteviewmodel.dart';
import 'package:noteapp/widgets/colorlistview.dart';

class Editnotecolorlistview extends StatefulWidget {
  const Editnotecolorlistview({super.key, required this.note});
  final Notemodel note;
  @override
  State<Editnotecolorlistview> createState() => _EditnotecolorlistviewState();
}

class _EditnotecolorlistviewState extends State<Editnotecolorlistview> {
  late int currentindex;
  @override
  void initState() {
    currentindex = kcolors.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

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
                  widget.note.color = kcolors[index].value;
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
