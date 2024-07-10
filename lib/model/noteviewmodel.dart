import 'package:hive/hive.dart';

part 'noteviewmodel.g.dart'; //same file name

@HiveType(typeId: 0)
class Notemodel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subtitle;
  @HiveField(2)
  final String data;
  @HiveField(3)
  int color;

  Notemodel(
      {required this.title,
      required this.subtitle,
      required this.data,
      required this.color});
}
