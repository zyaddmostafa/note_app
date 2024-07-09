import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:noteapp/views/editnoteview.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const Editnoteview();
            },
          ),
        );
      },
      child: Container(
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
              contentPadding: const EdgeInsets.only(right: 10),
              title: Text('Flutter tips'),
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text('build your career with zyadmostafa'),
              ),
              subtitleTextStyle: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
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
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
