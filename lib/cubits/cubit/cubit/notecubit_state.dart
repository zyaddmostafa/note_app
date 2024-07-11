part of 'notecubit_cubit.dart';

@immutable
sealed class NotecubitState {}

final class NotecubitInitial extends NotecubitState {}

final class Notecubitisloading extends NotecubitState {}

final class Notecubitsuccses extends NotecubitState {
  final List<Notemodel> notes;

  Notecubitsuccses({required this.notes});
}

final class Notecubitfaliur extends NotecubitState {
  final String errormessage;

  Notecubitfaliur({required this.errormessage});
}
