import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/model/noteviewmodel.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());

  addnote(Notemodel note) async {
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
