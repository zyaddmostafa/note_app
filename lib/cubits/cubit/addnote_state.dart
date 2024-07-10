part of 'addnote_cubit.dart';

@immutable
sealed class AddnoteState {}

class AddnoteInitial extends AddnoteState {}

class Addnoteloading extends AddnoteState {}

class AddnoteSuccses extends AddnoteState {}

class AddnoteFaluir extends AddnoteState {
  final String message;

  AddnoteFaluir(this.message);
}
