import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/cubit/addnote_cubit.dart';
import 'package:noteapp/model/noteviewmodel.dart';
import 'package:noteapp/simpleblocobserver.dart';
import 'package:noteapp/views/noteview.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = Simpleblocobserver();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(knotebox);

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
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      initialRoute: Noteview.id,
    );
  }
}
