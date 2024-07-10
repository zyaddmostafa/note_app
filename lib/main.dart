import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/cubits/cubit/addnote_cubit.dart';
import 'package:noteapp/model/noteviewmodel.dart';
import 'package:noteapp/simpleblocobserver.dart';
import 'package:noteapp/views/noteview.dart';

void main() async {
  Bloc.observer = Simpleblocobserver();
  await Hive.initFlutter();
  await Hive.openBox(knotebox);
  Hive.registerAdapter(NotemodelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddnoteCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {Noteview.id: (context) => const Noteview()},
        theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'assets/font/Poppins-Regular.ttf'),
        initialRoute: Noteview.id,
      ),
    );
  }
}
