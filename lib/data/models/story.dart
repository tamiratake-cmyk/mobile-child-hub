import 'package:hive/hive.dart';

part 'story.g.dart';

@HiveType(typeId: 0)
class Story extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String titleEn;

  @HiveField(2)
  final String titleAm;

  @HiveField(3)
  final String contentEn;

  @HiveField(4)
  final String contentAm;

  @HiveField(5)
  final String bookEn;

  @HiveField(6)
  final String bookAm;

  @HiveField(7)
  final String character;

  @HiveField(8)
  final String imagePath;

  @HiveField(9)
  final int order;

  @HiveField(10)
  final List<String> verseReferences;

  @HiveField(11)
  final String summaryEn;

  @HiveField(12)
  final String summaryAm;

  /// Scrambled-able plot beats used by the Story Sequence mini-game.
  /// Stored in correct chronological order; the game shuffles them.
  @HiveField(13)
  final List<String> sequenceEventsEn;

  @HiveField(14)
  final List<String> sequenceEventsAm;

  Story({
    required this.id,
    required this.titleEn,
    required this.titleAm,
    required this.contentEn,
    required this.contentAm,
    required this.bookEn,
    required this.bookAm,
    required this.character,
    required this.imagePath,
    required this.order,
    required this.verseReferences,
    required this.summaryEn,
    required this.summaryAm,
    this.sequenceEventsEn = const [],
    this.sequenceEventsAm = const [],
  });

  String getTitle(String locale) => locale == 'am' ? titleAm : titleEn;
  String getContent(String locale) => locale == 'am' ? contentAm : contentEn;
  String getBook(String locale) => locale == 'am' ? bookAm : bookEn;
  String getSummary(String locale) => locale == 'am' ? summaryAm : summaryEn;
  List<String> getSequenceEvents(String locale) =>
      locale == 'am' ? sequenceEventsAm : sequenceEventsEn;
  bool get hasSequenceGame => sequenceEventsEn.length >= 3;
}
