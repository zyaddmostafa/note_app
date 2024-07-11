import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/model/noteviewmodel.dart';

part 'notecubit_state.dart';

class Notecubit extends Cubit<NotecubitState> {
  Notecubit() : super(NotecubitInitial());
  List<Notemodel>? notes;
  fetchallnotes() async {
    var notebox = Hive.box<Notemodel>(knotebox);

    notes = notebox.values.toList();
  }
}
