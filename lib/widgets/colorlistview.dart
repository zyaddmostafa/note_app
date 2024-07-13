import 'package:flutter/material.dart';

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
  List<Color> color = const [
    Color(0xFF336699),
    Color(0xFF86BBD8),
    Color(0xFF2F4858),
    Color(0xFF9EE493),
    Color(0xFF6969B3),
    Color(0xFF533A7B)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: color.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  currentindex = index;
                  setState(() {});
                },
                child: Coloritem(
                  color: color[index],
                  isactive: currentindex == index,
                ),
              ),
            );
          }),
    );
  }
}
