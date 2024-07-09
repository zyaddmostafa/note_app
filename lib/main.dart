import 'package:flutter/material.dart';
import 'package:noteapp/views/noteview.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {Noteview.id: (context) => const Noteview()},
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'assets/font/Poppins-Regular.ttf'),
      initialRoute: Noteview.id,
    );
  }
}
