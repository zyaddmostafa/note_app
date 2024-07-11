import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/model/noteviewmodel.dart';

part 'notecubit_state.dart';

class Notecubit extends Cubit<NotecubitState> {
  Notecubit() : super(NotecubitInitial());
}
