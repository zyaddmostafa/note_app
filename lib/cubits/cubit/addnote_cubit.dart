import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/model/noteviewmodel.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());
  Color color = const Color(0xFF336699);
  addnote(Notemodel note) async {
    note.color = color!.value;
    emit(Addnoteloading());
    try {
      var notebox = Hive.box<Notemodel>(knotebox);

      await notebox.add(note);
      emit(AddnoteSuccses());
    } catch (e) {
      emit(AddnoteFaluir(e.toString()));
    }
  }
}
