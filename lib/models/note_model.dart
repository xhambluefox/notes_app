import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class ModelNotes extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;

  ModelNotes({required this.title, required this.subTitle, required this.date});
}
 