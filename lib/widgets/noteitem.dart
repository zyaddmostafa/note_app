import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 24,
      ),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(right: 10),
            title: Text('Flutter tips'),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text('build your career with zyadmostafa'),
            ),
            subtitleTextStyle: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 17,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 35,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              'July8,2024',
              style:
                  TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
