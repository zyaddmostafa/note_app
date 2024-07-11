import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/model/noteviewmodel.dart';

part 'notecubit_state.dart';

class Notecubit extends Cubit<NotecubitState> {
  Notecubit() : super(NotecubitInitial());

  fetchallnotes() async {
    emit(Notecubitisloading());
    try {
      var notebox = Hive.box<Notemodel>(knotebox);

      List<Notemodel> notes = notebox.values.toList();
      emit(Notecubitsuccses(notes: notes));
    } catch (e) {
      emit(Notecubitfaliur(errormessage: e.toString()));
    }
  }
}
